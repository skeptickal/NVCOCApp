import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/learnpages/resources/pdf_card.dart';
import 'package:nvcoc_app/ministriespages/teens/parents2_screen_helper.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';

class Parents2Screen extends StatefulWidget {
  const Parents2Screen({super.key});

  @override
  State<Parents2Screen> createState() => _Parents2ScreenState();
}

class _Parents2ScreenState extends State<Parents2Screen> {
  void _toggleFamilyQPdf() {
    setState(() {
      Parents2ScreenHelper.showFamilyQPdf =
          !Parents2ScreenHelper.showFamilyQPdf;
    });
  }

  void _toggleFamilyQPresPdf() {
    setState(() {
      Parents2ScreenHelper.showFamilyQPresPdf =
          !Parents2ScreenHelper.showFamilyQPresPdf;
    });
  }

  void _toggleFamilyRhythmPresPdf() {
    setState(() {
      Parents2ScreenHelper.showFamilyRhythmPresPdf =
          !Parents2ScreenHelper.showFamilyRhythmPresPdf;
    });
  }

  void _toggleFamilyRhythmPdf() {
    setState(() {
      Parents2ScreenHelper.showFamilyRhythmPdf =
          !Parents2ScreenHelper.showFamilyRhythmPdf;
    });
  }

  void _toggleUnhurryPdf() {
    setState(() {
      Parents2ScreenHelper.showUnhurryPdf =
          !Parents2ScreenHelper.showUnhurryPdf;
    });
  }

  void _toggleEncouragePdf() {
    setState(() {
      Parents2ScreenHelper.showEncouragePdf =
          !Parents2ScreenHelper.showEncouragePdf;
    });
  }

  void _toggleHardConvoHandoutPdf() {
    setState(() {
      Parents2ScreenHelper.showHardConvoHandoutPdf =
          !Parents2ScreenHelper.showHardConvoHandoutPdf;
    });
  }

  void _toggleHardConvoPresPdf() {
    setState(() {
      Parents2ScreenHelper.showHardConvoPresPdf =
          !Parents2ScreenHelper.showHardConvoPresPdf;
    });
  }

  void _toggleDecisionPdf() {
    setState(() {
      Parents2ScreenHelper.showDecisionPdf =
          !Parents2ScreenHelper.showDecisionPdf;
    });
  }

  void _toggleDelightHandoutPdf() {
    setState(() {
      Parents2ScreenHelper.showDelightHandoutPdf =
          !Parents2ScreenHelper.showDelightHandoutPdf;
    });
  }

  void _toggleDelightPresPdf() {
    setState(() {
      Parents2ScreenHelper.showDecisionPresPdf =
          !Parents2ScreenHelper.showDecisionPresPdf;
    });
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
                        'FAMILY DYNAMICS RESOURCES',
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
                          """Below are a series of pdfs that can help guide your learning of healthy family dynamics""",
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
            Card(
              elevation: 4.0,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: novaYellow)),
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'FAMILY DYNAMICS',
                    style: GoogleFonts.montserrat(
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: novaBlue,
                    ),
                  ),
                ),
              ),
            ),
            PdfCard(
                title: 'Family Dynamics Questionairre',
                pdfUrl:
                    'https://www.nvcoc.church/s/Family-Dynamics-Questionnaire-Handout.pdf',
                pdfViewerKey: Parents2ScreenHelper.familyQPdfViewerKey,
                showPdf: Parents2ScreenHelper.showFamilyQPdf,
                onTap: _toggleFamilyQPdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
            PdfCard(
                title: 'Family Dynamics Presentation Slides',
                pdfUrl: 'https://www.nvcoc.church/s/Revising-Family-PTP.pdf',
                pdfViewerKey: Parents2ScreenHelper.familyQPresPdfViewerKey,
                showPdf: Parents2ScreenHelper.showFamilyQPresPdf,
                onTap: _toggleFamilyQPresPdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
            Card(
              elevation: 4.0,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: novaYellow)),
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'FAMILY RHYTHMS & SABBATH',
                    style: GoogleFonts.montserrat(
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: novaBlue,
                    ),
                  ),
                ),
              ),
            ),
            PdfCard(
                title: 'Family Rhythms & Sabbath Presentation Slides',
                pdfUrl:
                    'https://www.nvcoc.church/s/Family-Rhythms-Sabbath-PTP.pdf',
                pdfViewerKey: Parents2ScreenHelper.familyRhythmPresPdfViewerKey,
                showPdf: Parents2ScreenHelper.showFamilyRhythmPresPdf,
                onTap: _toggleFamilyRhythmPresPdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
            PdfCard(
                title: 'Family Rhythms Handout',
                pdfUrl: 'https://www.nvcoc.church/s/Family-Rhythm.pdf',
                pdfViewerKey: Parents2ScreenHelper.familyRhythmPdfViewerKey,
                showPdf: Parents2ScreenHelper.showFamilyRhythmPdf,
                onTap: _toggleFamilyRhythmPdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
            PdfCard(
                title: 'How to Unhurry Workbook (John Mark Comer)',
                pdfUrl:
                    'https://www.nvcoc.church/s/How-to-Unhurry-Workbook.pdf',
                pdfViewerKey: Parents2ScreenHelper.unhurryPdfViewerKey,
                showPdf: Parents2ScreenHelper.showUnhurryPdf,
                onTap: _toggleUnhurryPdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
            Card(
              elevation: 4.0,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: novaYellow)),
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'ENCOURAGE ONE ANOTHER DAILY',
                    style: GoogleFonts.montserrat(
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: novaBlue,
                    ),
                  ),
                ),
              ),
            ),
            PdfCard(
                title:
                    'Encourage One Another Daily (Five Love Languages) Handout',
                pdfUrl:
                    'https://www.nvcoc.church/s/Five-Love-Language-Handout.pdf',
                pdfViewerKey: Parents2ScreenHelper.encouragePdfViewerKey,
                showPdf: Parents2ScreenHelper.showEncouragePdf,
                onTap: _toggleEncouragePdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
            Card(
              elevation: 4.0,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: novaYellow)),
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'HAVING HARD CONVERSATIONS',
                    style: GoogleFonts.montserrat(
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: novaBlue,
                    ),
                  ),
                ),
              ),
            ),
            PdfCard(
                title: 'Having Hard Conversations Handout',
                pdfUrl:
                    'https://www.nvcoc.church/s/Having-Difficult-Conversations-with-Your-Teens.pdf',
                pdfViewerKey: Parents2ScreenHelper.hardConvoHandoutPdfViewerKey,
                showPdf: Parents2ScreenHelper.showHardConvoHandoutPdf,
                onTap: _toggleHardConvoHandoutPdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
            PdfCard(
                title: 'Having Hard Conversations Presentation Slides',
                pdfUrl:
                    'https://www.nvcoc.church/s/Having-Hard-Conversations-PTP-Slides.pdf',
                pdfViewerKey: Parents2ScreenHelper.hardConvoPresPdfViewerKey,
                showPdf: Parents2ScreenHelper.showHardConvoPresPdf,
                onTap: _toggleHardConvoPresPdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
            Card(
              elevation: 4.0,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: novaYellow)),
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'GODLY DECISION MAKING',
                    style: GoogleFonts.montserrat(
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: novaBlue,
                    ),
                  ),
                ),
              ),
            ),
            PdfCard(
                title: 'Decision Making Handout',
                pdfUrl:
                    'https://www.nvcoc.church/s/Teen-Decision-Making-PTP.pdf',
                pdfViewerKey: Parents2ScreenHelper.decisionPdfViewerKey,
                showPdf: Parents2ScreenHelper.showDecisionPdf,
                onTap: _toggleDecisionPdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
            Card(
              elevation: 4.0,
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: novaYellow)),
              margin: const EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'DELIGHT',
                    style: GoogleFonts.montserrat(
                      fontSize: 22.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: novaBlue,
                    ),
                  ),
                ),
              ),
            ),
            PdfCard(
                title: 'Delight Handout',
                pdfUrl: 'https://www.nvcoc.church/s/Delight.pdf',
                pdfViewerKey: Parents2ScreenHelper.delightHandoutPdfViewerKey,
                showPdf: Parents2ScreenHelper.showDelightHandoutPdf,
                onTap: _toggleDelightHandoutPdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
            PdfCard(
                title: 'Delight Presentation Slides',
                pdfUrl: 'https://www.nvcoc.church/s/Delight-PTP-Slides.pdf',
                pdfViewerKey: Parents2ScreenHelper.delightPresPdfViewerKey,
                showPdf: Parents2ScreenHelper.showDelightPresPdf,
                onTap: _toggleDelightPresPdf,
                onDocumentLoadFailed: Parents2ScreenHelper.handlePdfError),
          ],
        ),
      ),
    );
  }
}
