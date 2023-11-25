import 'package:flutter/material.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/learnpages/resources/pdf_card.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class TeensResourceScreen extends StatefulWidget {
  const TeensResourceScreen({super.key});

  @override
  State<TeensResourceScreen> createState() => TeensResourceScreenState();
}

class TeensResourceScreenState extends State<TeensResourceScreen> {
  static bool xmasQuietTimes = false;
  static bool deconstruct = false;
  static bool prayer = false;
  static final GlobalKey<SfPdfViewerState> xmasQuietTimesViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> deconstructPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> prayerPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  void _toggleTabletop1Pdf() {
    setState(() {
      xmasQuietTimes = !xmasQuietTimes;
    });
  }

  void _toggleTabletop2PresPdf() {
    setState(() {
      deconstruct = !deconstruct;
    });
  }

  void _togglePrayerPresPdf() {
    setState(() {
      prayer = !prayer;
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
                        'RESOURCES FOR TEENS',
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
                          """Below are a couple pdfs that can give you some helpful spiritual tips!""",
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
                title: 'Christmas Break Quiet Time Booklet 2022-2023',
                pdfUrl:
                    'https://www.nvcoc.church/s/Teens-Christmas-Quiet-Time-Packets-2022-2023.pdf',
                pdfViewerKey: xmasQuietTimesViewerKey,
                showPdf: xmasQuietTimes,
                onTap: _toggleTabletop1Pdf,
                onDocumentLoadFailed: handlePdfError),
            PdfCard(
                title: 'How to Deconstruct/Reconstruct Your Beliefs',
                pdfUrl:
                    'https://www.nvcoc.church/s/How-to-Deconstruct_Reconstruct.pdf',
                pdfViewerKey: deconstructPdfViewerKey,
                showPdf: deconstruct,
                onTap: _toggleTabletop2PresPdf,
                onDocumentLoadFailed: handlePdfError),
            PdfCard(
                title: 'Prayer',
                pdfUrl: 'https://www.nvcoc.church/s/Prayer-Teen-Training.pdf',
                pdfViewerKey: prayerPdfViewerKey,
                showPdf: prayer,
                onTap: _togglePrayerPresPdf,
                onDocumentLoadFailed: handlePdfError),
          ],
        ),
      ),
    );
  }
}
