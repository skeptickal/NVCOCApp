// ignore_for_file: sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/learnpages/resources/pdf_card.dart';
import 'resource_screen_helper.dart';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({super.key});

  @override
  State<ResourceScreen> createState() => _ResourceScreenState();
}

class _ResourceScreenState extends State<ResourceScreen> {
  void _toggleWordPdf() {
    setState(() {
      ResourceScreenHelper.showWordPdf = !ResourceScreenHelper.showWordPdf;
    });
  }

  void _toggleDiscipleshipPdf() {
    setState(() {
      ResourceScreenHelper.showDiscipleshipPdf =
          !ResourceScreenHelper.showDiscipleshipPdf;
    });
  }

  void _toggleSinPdf() {
    setState(() {
      ResourceScreenHelper.showSinPdf = !ResourceScreenHelper.showSinPdf;
    });
  }

  void _toggleTheCrossPdf() {
    setState(() {
      ResourceScreenHelper.showTheCrossPdf =
          !ResourceScreenHelper.showTheCrossPdf;
    });
  }

  void _toggleMedicalPdf() {
    setState(() {
      ResourceScreenHelper.showMedicalPdf =
          !ResourceScreenHelper.showMedicalPdf;
    });
  }

  void _toggleRepentancePdf() {
    setState(() {
      ResourceScreenHelper.showRepentancePdf =
          !ResourceScreenHelper.showRepentancePdf;
    });
  }

  void _toggleBaptism1Pdf() {
    setState(() {
      ResourceScreenHelper.showBaptism1Pdf =
          !ResourceScreenHelper.showBaptism1Pdf;
    });
  }

  void _toggleBaptism2Pdf() {
    setState(() {
      ResourceScreenHelper.showBaptism2Pdf =
          !ResourceScreenHelper.showBaptism2Pdf;
    });
  }

  void _toggleTheChurchPdf() {
    setState(() {
      ResourceScreenHelper.showTheChurchPdf =
          !ResourceScreenHelper.showTheChurchPdf;
    });
  }

  void _toggleCountingTheCostPdf() {
    setState(() {
      ResourceScreenHelper.showCountingTheCostPdf =
          !ResourceScreenHelper.showCountingTheCostPdf;
    });
  }

  void _toggleJohn1Pdf() {
    setState(() {
      ResourceScreenHelper.showJohn1Pdf = !ResourceScreenHelper.showJohn1Pdf;
    });
  }

  void _toggleJohn2Pdf() {
    setState(() {
      ResourceScreenHelper.showJohn2Pdf = !ResourceScreenHelper.showJohn2Pdf;
    });
  }

  void _toggleSeekingGodPdf() {
    setState(() {
      ResourceScreenHelper.showSeekingGodPdf =
          !ResourceScreenHelper.showSeekingGodPdf;
    });
  }

  void _toggleEvidencesPdf() {
    setState(() {
      ResourceScreenHelper.showEvidencesPdf =
          !ResourceScreenHelper.showEvidencesPdf;
    });
  }

  void _toggleWhoIsJesusPdf() {
    setState(() {
      ResourceScreenHelper.showWhoIsJesusPdf =
          !ResourceScreenHelper.showWhoIsJesusPdf;
    });
  }

  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;

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
              color: white,
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
                        'BASIC STUDIES',
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
                          """These studies are a great place to start for anyone wanting to begin or examine their faith journey through the eyes of the Bible.""",
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

            // Word of God Study
            PdfCard(
                title: 'Word of God',
                pdfUrl: 'https://www.nvcoc.church/s/TheWord-Study.pdf',
                pdfViewerKey: ResourceScreenHelper.wordPdfViewerKey,
                showPdf: ResourceScreenHelper.showWordPdf,
                onTap: _toggleWordPdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),

// Discipleship Study
            PdfCard(
                title: 'Discipleship',
                pdfUrl: 'https://www.nvcoc.church/s/Discipleship-Study.pdf',
                pdfViewerKey: ResourceScreenHelper.discipleshipPdfViewerKey,
                showPdf: ResourceScreenHelper.showDiscipleshipPdf,
                onTap: _toggleDiscipleshipPdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),
// Sin Study
            PdfCard(
                title: 'Sin',
                pdfUrl: 'https://www.nvcoc.church/s/Sin-Study.pdf',
                pdfViewerKey: ResourceScreenHelper.sinPdfViewerKey,
                showPdf: ResourceScreenHelper.showSinPdf,
                onTap: _toggleSinPdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),
// The Cross Study
            PdfCard(
                title: 'The Cross',
                pdfUrl: 'https://www.nvcoc.church/s/Cross-Study.pdf',
                pdfViewerKey: ResourceScreenHelper.theCrossPdfViewerKey,
                showPdf: ResourceScreenHelper.showTheCrossPdf,
                onTap: _toggleTheCrossPdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),

// Medical Ethics Study
            PdfCard(
                title: 'Medical Account of the Crucifixion',
                pdfUrl: 'https://www.nvcoc.church/s/Medical-Account.pdf',
                pdfViewerKey: ResourceScreenHelper.medicalPdfViewerKey,
                showPdf: ResourceScreenHelper.showMedicalPdf,
                onTap: _toggleMedicalPdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),

// Repentance Study
            PdfCard(
                title: 'Repentance',
                pdfUrl: 'https://www.nvcoc.church/s/Repentance-Study.pdf',
                pdfViewerKey: ResourceScreenHelper.repentancePdfViewerKey,
                showPdf: ResourceScreenHelper.showRepentancePdf,
                onTap: _toggleRepentancePdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),

// Baptism 1 Study
            PdfCard(
                title: 'Baptism pt 1',
                pdfUrl: 'https://www.nvcoc.church/s/Baptism-1-Study.pdf',
                pdfViewerKey: ResourceScreenHelper.baptism1PdfViewerKey,
                showPdf: ResourceScreenHelper.showBaptism1Pdf,
                onTap: _toggleBaptism1Pdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),

// Baptism 2 Study
            PdfCard(
                title: 'Baptism pt 2',
                pdfUrl: 'https://www.nvcoc.church/s/Baptism-2-Study.pdf',
                pdfViewerKey: ResourceScreenHelper.baptism2PdfViewerKey,
                showPdf: ResourceScreenHelper.showBaptism2Pdf,
                onTap: _toggleBaptism2Pdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),

// The Church Study
            PdfCard(
                title: 'The Church',
                pdfUrl: 'https://www.nvcoc.church/s/The-Church.pdf',
                pdfViewerKey: ResourceScreenHelper.theChurchPdfViewerKey,
                showPdf: ResourceScreenHelper.showTheChurchPdf,
                onTap: _toggleTheChurchPdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),

// Counting The Cost Study
            PdfCard(
                title: 'Counting the Cost',
                pdfUrl: 'https://www.nvcoc.church/s/Counting_Cost-Study.pdf',
                pdfViewerKey: ResourceScreenHelper.countingTheCostPdfViewerKey,
                showPdf: ResourceScreenHelper.showCountingTheCostPdf,
                onTap: _toggleCountingTheCostPdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),

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
                        'BRING TO FAITH STUDIES',
                        style: GoogleFonts.montserrat(
                          fontSize: 22.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF04578F),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          """These studies are meant for people questioning or skeptical about God, to gently lead them to a place where God makes sense and is worth seeking. .""",
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
// John 1 Study
            PdfCard(
                title: 'The Book of John pt 1',
                pdfUrl: 'https://www.nvcoc.church/s/John-Study-part1.pdf',
                pdfViewerKey: ResourceScreenHelper.john1PdfViewerKey,
                showPdf: ResourceScreenHelper.showJohn1Pdf,
                onTap: _toggleJohn1Pdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),
// John 2 Study
            PdfCard(
                title: 'The Book of John pt 2',
                pdfUrl: 'https://www.nvcoc.church/s/John-Study-part2.pdf',
                pdfViewerKey: ResourceScreenHelper.john2PdfViewerKey,
                showPdf: ResourceScreenHelper.showJohn2Pdf,
                onTap: _toggleJohn2Pdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),
// Seeking God Study
            PdfCard(
                title: 'Seeking God',
                pdfUrl: 'https://www.nvcoc.church/s/Seeking_God-Study.pdf',
                pdfViewerKey: ResourceScreenHelper.seekingGodPdfViewerKey,
                showPdf: ResourceScreenHelper.showSeekingGodPdf,
                onTap: _toggleSeekingGodPdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),
// Evidences Study
            PdfCard(
                title: 'Evidences',
                pdfUrl:
                    'https://www.nvcoc.church/s/Evidences-for-Jesus-Study.pdf',
                pdfViewerKey: ResourceScreenHelper.evidencesPdfViewerKey,
                showPdf: ResourceScreenHelper.showEvidencesPdf,
                onTap: _toggleEvidencesPdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),
// Who Is Jesus Study
            PdfCard(
                title: 'Who Is Jesus?',
                pdfUrl: 'https://www.nvcoc.church/s/Who-is-jesus-study.pdf',
                pdfViewerKey: ResourceScreenHelper.whoIsJesusPdfViewerKey,
                showPdf: ResourceScreenHelper.showWhoIsJesusPdf,
                onTap: _toggleWhoIsJesusPdf,
                onDocumentLoadFailed: ResourceScreenHelper.handlePdfError),
          ],
        ),
      ),
    );
  }
}
