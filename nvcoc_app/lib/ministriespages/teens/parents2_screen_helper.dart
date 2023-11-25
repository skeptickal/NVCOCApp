// parents2_screen_helper.dart

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Parents2ScreenHelper {
  // Define your keys
  static final GlobalKey<SfPdfViewerState> familyQPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> familyQPresPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> familyRhythmPresPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> familyRhythmPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> unhurryPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> encouragePdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> loveLanguagePdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> hardConvoHandoutPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> hardConvoPresPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> decisionPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> decisionPresPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> delightHandoutPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> delightPresPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> evidencesPdfViewerKey =
      GlobalKey<SfPdfViewerState>();
  static final GlobalKey<SfPdfViewerState> whoIsJesusPdfViewerKey =
      GlobalKey<SfPdfViewerState>();

  // Define your boolean variables
  static bool showFamilyQPdf = false;
  static bool showFamilyQPresPdf = false;
  static bool showFamilyRhythmPresPdf = false;
  static bool showFamilyRhythmPdf = false;
  static bool showUnhurryPdf = false;
  static bool showEncouragePdf = false;
  static bool showLoveLanguagePdf = false;
  static bool showHardConvoHandoutPdf = false;
  static bool showHardConvoPresPdf = false;
  static bool showDecisionPdf = false;
  static bool showDecisionPresPdf = false;
  static bool showDelightHandoutPdf = false;
  static bool showDelightPresPdf = false;
  static bool showEvidencesPdf = false;
  static bool showWhoIsJesusPdf = false;

  // Define the error handling function
  static void handlePdfError(dynamic error) {
    print('Error loading PDF: $error');
  }
}
