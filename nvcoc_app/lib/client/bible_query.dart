// ignore_for_file: depend_on_referenced_packages
import 'dart:convert';
import 'package:http/http.dart' as http;

class BibleQuery {
  final http.Client httpClient;

  BibleQuery({http.Client? httpClient}) : httpClient = httpClient ?? http.Client();

  Future<String> getPassage(String searchTerm) async {
    try {
      final Uri url = Uri.http('bible-api.com', searchTerm);
      var response = await httpClient.get(url);
      dynamic data = jsonDecode(response.body);

      if (data is Map<String, dynamic> && data.containsKey('text')) {
        return data['text'].toString();
      } else {
        throw Exception('Unexpected response format: $data');
      }
    } catch (e) {
      print('Error fetching passage: $e');
      throw Exception('Error fetching passage: $e');
    }
  }
}
