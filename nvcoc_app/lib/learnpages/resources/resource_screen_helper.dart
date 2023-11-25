// resource_screen_helper.dart

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ResourceScreenHelper {
  // Define your keys
  static final GlobalKey<SfPdfViewerState> wordPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> discipleshipPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> sinPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> theCrossPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> medicalPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> repentancePdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> baptism1PdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> baptism2PdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> theChurchPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> countingTheCostPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> john1PdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> john2PdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> seekingGodPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> evidencesPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> whoIsJesusPdfViewerKey =
      GlobalKey<SfPdfViewerState>();

  // Define your boolean variables
  static bool showWordPdf = false;
  static bool showDiscipleshipPdf = false;
  static bool showSinPdf = false;
  static bool showTheCrossPdf = false;
  static bool showMedicalPdf = false;
  static bool showRepentancePdf = false;
  static bool showBaptism1Pdf = false;
  static bool showBaptism2Pdf = false;
  static bool showTheChurchPdf = false;
  static bool showCountingTheCostPdf = false;
  static bool showJohn1Pdf = false;
  static bool showJohn2Pdf = false;
  static bool showSeekingGodPdf = false;
  static bool showEvidencesPdf = false;
  static bool showWhoIsJesusPdf = false;

  // Define the error handling function
  static void handlePdfError(dynamic error) {
    print('Error loading PDF: $error');
  }
}
