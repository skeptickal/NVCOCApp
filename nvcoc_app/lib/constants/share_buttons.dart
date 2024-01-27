//ShareButtons
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class ShareIconButtom extends StatelessWidget {
  final String imageName;
  final String name;
  final String jpegOrPng;
  final String subject;
  final Color iconColor;

  const ShareIconButtom({
    super.key,
    required this.iconColor,
    required this.imageName,
    required this.name,
    required this.jpegOrPng,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    IconData icon = Platform.isAndroid ? Icons.share : Icons.ios_share;
    return IconButton(
      icon: Icon(icon, color: iconColor),
      onPressed: () async {
        final image = await rootBundle.load('assets/$imageName');
        final buffer = image.buffer;

        Share.shareXFiles(
          [
            XFile.fromData(
              buffer.asUint8List(
                image.offsetInBytes,
                image.lengthInBytes,
              ),
              name: name,
              mimeType: 'image/$jpegOrPng',
            ),
          ],
          subject: subject,
        );
      },
    );
  }
}
