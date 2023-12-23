// pdf_card.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfCard extends StatelessWidget {
  final String title;
  final String pdfUrl;
  final GlobalKey<SfPdfViewerState> pdfViewerKey;
  final bool showPdf;
  final void Function()? onTap;
  final Function(dynamic) onDocumentLoadFailed;

  const PdfCard({
    super.key,
    required this.title,
    required this.pdfUrl,
    required this.pdfViewerKey,
    required this.showPdf,
    required this.onTap,
    required this.onDocumentLoadFailed,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double pdfViewerHeight = screenHeight * 0.8;

    return Card(
      elevation: 0,
      color: white,
      child: Column(
        children: [
          ListTile(
            selectedTileColor: Colors.white,
            leading: const Icon(Icons.book, color: novaBlue),
            title: Text(
              title,
              style:
                  GoogleFonts.montserrat(letterSpacing: 2.0, color: novaBlue),
            ),
            onTap: onTap,
          ),
          if (showPdf)
            Container(
              color: novaYellow,
              height: pdfViewerHeight,
              child: SfPdfViewer.network(
                pdfUrl,
                key: pdfViewerKey,
                onDocumentLoadFailed: onDocumentLoadFailed,
              ),
            ),
        ],
      ),
    );
  }
}
