// ignore_for_file: sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({super.key});

  @override
  State<ResourceScreen> createState() => _ResourceScreenState();
}

class _ResourceScreenState extends State<ResourceScreen> {
  final GlobalKey<SfPdfViewerState> _wordPdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _discipleshipPdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _sinPdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _theCrossPdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _medicalPdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _repentancePdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _baptism1PdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _baptism2PdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _theChurchPdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _countingTheCostPdfViewerKey = GlobalKey();

  final GlobalKey<SfPdfViewerState> _john1PdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _john2PdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _seekingGodPdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _evidencesPdfViewerKey = GlobalKey();
  final GlobalKey<SfPdfViewerState> _whoIsJesusPdfViewerKey = GlobalKey();

  bool showWordPdf = false;
  bool showDiscipleshipPdf = false;
  bool showSinPdf = false;
  bool showTheCrossPdf = false;
  bool showMedicalPdf = false;
  bool showRepentancePdf = false;
  bool showBaptism1Pdf = false;
  bool showBaptism2Pdf = false;
  bool showTheChurchPdf = false;
  bool showCountingTheCostPdf = false;

  bool showJohn1Pdf = false;
  bool showJohn2Pdf = false;
  bool showSeekingGodPdf = false;
  bool showEvidencesPdf = false;
  bool showWhoIsJesusPdf = false;

  double pfdViewerHeight = 200;

  void _toggleWordPdf() {
    setState(() {
      showWordPdf = !showWordPdf;
    });
  }

  void _toggleDiscipleshipPdf() {
    setState(() {
      showDiscipleshipPdf = !showDiscipleshipPdf;
    });
  }

  void _toggleSinPdf() {
    setState(() {
      showSinPdf = !showSinPdf;
    });
  }

  void _toggleTheCrossPdf() {
    setState(() {
      showTheCrossPdf = !showTheCrossPdf;
    });
  }

  void _toggleMedicalPdf() {
    setState(() {
      showMedicalPdf = !showMedicalPdf;
    });
  }

  void _toggleRepentancePdf() {
    setState(() {
      showRepentancePdf = !showRepentancePdf;
    });
  }

  void _toggleBaptism1Pdf() {
    setState(() {
      showBaptism1Pdf = !showBaptism1Pdf;
    });
  }

  void _toggleBaptism2Pdf() {
    setState(() {
      showBaptism2Pdf = !showBaptism2Pdf;
    });
  }

  void _toggleTheChurchPdf() {
    setState(() {
      showTheChurchPdf = !showTheChurchPdf;
    });
  }

  void _toggleCountingTheGhostPdf() {
    setState(() {
      showCountingTheCostPdf = !showCountingTheCostPdf;
    });
  }

  void _toggleJohn1Pdf() {
    setState(() {
      showJohn1Pdf = !showJohn1Pdf;
    });
  }

  void _toggleJohn2Pdf() {
    setState(() {
      showJohn2Pdf = !showJohn2Pdf;
    });
  }

  void _toggleSeekingGodPdf() {
    setState(() {
      showSeekingGodPdf = !showSeekingGodPdf;
    });
  }

  void _toggleEvidencesPdf() {
    setState(() {
      showEvidencesPdf = !showEvidencesPdf;
    });
  }

  void _toggleWhoIsJesusPdf() {
    setState(() {
      showWhoIsJesusPdf = !showWhoIsJesusPdf;
    });
  }

  void _handlePdfError(dynamic error) {
    print('Error loading PDF: $error');
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double pdfViewerHeight = screenHeight * 0.8;

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
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Word of God',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleWordPdf,
              ),
            ),
            if (showWordPdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/TheWord-Study.pdf',
                    key: _wordPdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// Discipleship Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Discipleship',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleDiscipleshipPdf,
              ),
            ),
            if (showDiscipleshipPdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Discipleship-Study.pdf',
                    key: _discipleshipPdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// Sin Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Sin',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleSinPdf,
              ),
            ),
            if (showSinPdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Sin-Study.pdf',
                    key: _sinPdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// The Cross Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'The Cross',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleTheCrossPdf,
              ),
            ),
            if (showTheCrossPdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Cross-Study.pdf',
                    key: _theCrossPdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// Medical Ethics Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Medical Account of the Crucifixion',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleMedicalPdf,
              ),
            ),
            if (showMedicalPdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Medical-Account.pdf',
                    key: _medicalPdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// Repentance Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Repentance',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleRepentancePdf,
              ),
            ),
            if (showRepentancePdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Repentance-Study.pdf',
                    key: _repentancePdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// Baptism 1 Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Baptism 1',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleBaptism1Pdf,
              ),
            ),
            if (showBaptism1Pdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Baptism-1-Study.pdf',
                    key: _baptism1PdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// Baptism 2 Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Baptism 2',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleBaptism2Pdf,
              ),
            ),
            if (showBaptism2Pdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Baptism-2-Study.pdf',
                    key: _baptism2PdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// The Church Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'The Church',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleTheChurchPdf,
              ),
            ),
            if (showTheChurchPdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Church-Study.pdf',
                    key: _theChurchPdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// Counting The Ghost Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Counting The Cost',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleCountingTheGhostPdf,
              ),
            ),
            if (showCountingTheCostPdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Counting_Cost-Study.pdf',
                    key: _countingTheCostPdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
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
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'The Book of John pt. 1',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleJohn1Pdf,
              ),
            ),
            if (showJohn1Pdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/John-Study-part1.pdf',
                    key: _john1PdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// John 2 Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'John 2',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleJohn2Pdf,
              ),
            ),
            if (showJohn2Pdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/John-Study-part2.pdf',
                    key: _john2PdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// Seeking God Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Seeking God',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleSeekingGodPdf,
              ),
            ),
            if (showSeekingGodPdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Seeking_God-Study.pdf',
                    key: _seekingGodPdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// Evidences Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Evidences',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleEvidencesPdf,
              ),
            ),
            if (showEvidencesPdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Evidences-for-Jesus-Study.pdf',
                    key: _evidencesPdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),

// Who Is Jesus Study
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                selectedTileColor: Colors.white,
                leading: const Icon(Icons.book, color: novaBlue),
                title: Text(
                  'Who Is Jesus',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2.0, color: novaBlue),
                ),
                onTap: _toggleWhoIsJesusPdf,
              ),
            ),
            if (showWhoIsJesusPdf)
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 16, 8, 16),
                child: Container(
                  height: pdfViewerHeight,
                  child: SfPdfViewer.network(
                    'https://www.nvcoc.church/s/Who-is-Jesus-study.pdf',
                    key: _whoIsJesusPdfViewerKey,
                    onDocumentLoadFailed: _handlePdfError,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
