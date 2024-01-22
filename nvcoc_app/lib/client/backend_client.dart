import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../constants/url_launch_function.dart';

class BackendClient {
  final http.Client httpClient;

  BackendClient({http.Client? httpClient}) : httpClient = httpClient ?? http.Client();

  Future<dynamic> getData({required String host, required String uri, Map<String, dynamic>? queryParams}) async {
    final Uri url = Uri.http(host, uri, queryParams);
    try {
      var response = await httpClient.get(url);
      var encodeFirst = json.encode(response.body);
      dynamic data = jsonDecode(encodeFirst);

      if (response.statusCode == HttpStatus.ok) {
        return data;
      } else {
        return 'HTTP Request failed with status: ${response.statusCode}';
      }
    } catch (e) {
      print('Error during HTTPrequest $e');
      return 'Error during HTTP request: $e';
    }
  }

  Future<dynamic> postData({required String host, required String uri, dynamic body}) async {
    try {
      final Uri url = Uri.http(host, uri);
      final response = await httpClient.post(
        url,
        headers: headers,
        body: jsonEncode(body),
      );
      if (response.statusCode == HttpStatus.created) {
        print('Post executed successfully');
        return jsonDecode(response.body);
      } else {
        String errorMessage = 'Failed to execute Post Request. Status code: ${response.statusCode}';
        print(errorMessage);
        return errorMessage;
      }
    } catch (e) {
      print('Error during HTTP request: $e');
      rethrow;
    }
  }

  Future<dynamic> putData({
    required String host,
    required String uri,
    dynamic body,
  }) async {
    try {
      final Uri url = Uri.http(host, uri);
      final response = await httpClient.put(
        url,
        headers: headers,
        body: jsonEncode(body),
      );
      if (response.statusCode == HttpStatus.created) {
        print('Put executed successfully');
        return jsonDecode(response.body);
      } else {
        String errorMessage = 'Failed to execute Put Request. Status code: ${response.statusCode}';
        print(errorMessage);
        return errorMessage;
      }
    } catch (e) {
      print('Error during HTTP request: $e');
      rethrow;
    }
  }

  Future<dynamic> deleteData({required String host, required String uri}) async {
    try {
      final Uri url = Uri.http(host, uri);
      final response = await httpClient.delete(
        url,
        headers: headers,
      );

      if (response.statusCode == HttpStatus.accepted) {
        print('Delete executed successfully');
        return null;
      } else {
        final String errorMessage = 'Failed to execute Delete Request. Status code: ${response.statusCode}';
        print(errorMessage);
        return errorMessage;
      }
    } catch (e) {
      print('Error during HTTP request: $e');
      rethrow;
    }
  }
}
