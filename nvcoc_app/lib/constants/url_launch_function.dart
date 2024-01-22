// URL Launching
import 'package:url_launcher/url_launcher.dart';

Future<void> canLaunchUrl(String url) async {
  Uri url0 = Uri.parse(url);
  if (!await launchUrl(url0)) {
    throw Exception('Could Not Launch $url0');
  }
}

const Map<String, String> headers = {
  'Content-Type': 'application/json; charset=UTF-8',
};
