import 'package:flutter/material.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/learnpages/resources/pdf_card.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Parents3Screen extends StatefulWidget {
  const Parents3Screen({super.key});

  @override
  State<Parents3Screen> createState() => _Parents3ScreenState();
}

class _Parents3ScreenState extends State<Parents3Screen> {
  static bool showTableTop1 = false;
  static bool showTableTop2 = false;
  static final GlobalKey<SfPdfViewerState> tabletop1ViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> tabletop2PdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  void _toggleTabletop1Pdf() {
    setState(() {
      showTableTop1 = !showTableTop1;
    });
  }

  void _toggleTabletop2PresPdf() {
    setState(() {
      showTableTop2 = !showTableTop2;
    });
  }

  static void handlePdfError(dynamic error) {
    print('Error loading PDF: $error');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      floatingActionButton: const NovaButton(),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [novaBlue, white])),
        child: ListView(
          children: [
            Card(
              elevation: 4.0,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: novaYellow)),
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Text(
                        'CONVERSATION STARTERS',
                        style: GoogleFonts.montserrat(
                          fontSize: 22.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          color: novaBlue,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          """Below are a couple pdfs that can give you some helpful tips for starting conversations!""",
                          style: GoogleFonts.montserrat(
                            fontSize: 12.0,
                            letterSpacing: 2.0,
                            fontStyle: FontStyle.italic,
                            color: novaBlue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            PdfCard(
                title: 'Tabletop Card Set #1',
                pdfUrl: 'https://www.nvcoc.church/s/Devo-cards-Aug21.pdf',
                pdfViewerKey: tabletop1ViewerKey,
                showPdf: showTableTop1,
                onTap: _toggleTabletop1Pdf,
                onDocumentLoadFailed: handlePdfError),
            PdfCard(
                title: 'Tabletop Card Set #2',
                pdfUrl: 'https://www.nvcoc.church/s/Devo-cards-Sep21.pdf',
                pdfViewerKey: tabletop2PdfViewerKey,
                showPdf: showTableTop2,
                onTap: _toggleTabletop2PresPdf,
                onDocumentLoadFailed: handlePdfError),
          ],
        ),
      ),
    );
  }
}
