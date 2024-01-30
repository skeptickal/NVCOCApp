// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:nvcoc_app/client/bible_query.dart';

void main() {
  group('Bible Query', () {
    const Map<String, String> defaultCannedHeaders = {
      'content-type': 'application/json',
    };

    BibleQuery createBibleQueryWithMockedResponse({
      required Map<String, dynamic>? responseBody,
      required int statusCode,
      Map<String, String>? headers,
    }) {
      MockClient mockHttpClient = MockClient(
        (http.Request request) async => http.Response(
          json.encode(responseBody),
          statusCode,
          request: request,
          headers: headers ?? defaultCannedHeaders,
        ),
      );
      return BibleQuery(httpClient: mockHttpClient);
    }

    test('getPassage returns Scripture as String on success', () async {
      Map<String, dynamic> responseBody = {'reference': 'notation', 'text': 'scripture'};
      BibleQuery bibleQuery = createBibleQueryWithMockedResponse(responseBody: responseBody, statusCode: 200);
      final dynamic result = await bibleQuery.getPassage('John+3:16');
      String decodedResponseBody = '${responseBody['reference'].toString()}\n${responseBody['text'].toString()}';
      expect(result, equals(decodedResponseBody));
    });

    test('getPassage handles non-200 status code', () async {
      BibleQuery bibleQuery = createBibleQueryWithMockedResponse(responseBody: null, statusCode: 404);

      try {
        //create intentional failure
        await bibleQuery.getPassage('Invalid+Reference');
      } catch (e) {
        expect(e, isA<Exception>());
        expect(e.toString(), contains('HTTP Error: 404'));
      }
    });
    test('getPassage handles unexpected response format', () async {
      Map<String, dynamic> responseBody = {'unexpectedKey': 'unexpectedValue'};
      BibleQuery bibleQuery = createBibleQueryWithMockedResponse(responseBody: responseBody, statusCode: 200);

      try {
        //more intentional failure
        await bibleQuery.getPassage('Valid+Reference');
      } catch (e) {
        expect(e, isA<Exception>());
        expect(e.toString(), contains('Unexpected response format'));
      }
    });

    test('getPassage handles network error', () async {
      BibleQuery bibleQuery = BibleQuery(httpClient: MockClient((http.Request request) async {
        throw Exception('Simulated network error');
      }));

      try {
        //intentional failure
        await bibleQuery.getPassage('Valid+Reference');
      } catch (e) {
        expect(e, isA<Exception>());
        expect(e.toString(), contains('Error fetching passage'));
      }
    });
  });
}
