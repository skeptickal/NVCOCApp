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
      print('Request URL: $url');

      if (response.statusCode == 200) {
        dynamic data = jsonDecode(response.body);
        print(data);

        if (data is Map<String, dynamic> && data.containsKey('text')) {
          return '${data['reference'].toString()}\n${data['text'].toString()}';
        } else {
          throw Exception('Unexpected response format: $data');
        }
      } else {
        print('HTTP Error: ${response.statusCode}, ${response.reasonPhrase}');
        throw Exception('HTTP Error: ${response.statusCode}, ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Error fetching passage: $e');
      throw Exception('Error fetching passage: $e');
    }
  }
}
