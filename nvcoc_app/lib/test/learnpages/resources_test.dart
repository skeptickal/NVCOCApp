import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nvcoc_app/learnpages/resources.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart'; // Import the file you want to test

void main() {
  testWidgets('Widget Test for ResourceScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ResourceScreen(),
    ));

    // Example: Verify if the 'Word of God' ListTile is displayed.
    expect(find.text('Word of God'), findsOneWidget);

    // Example: Tap on the 'Word of God' ListTile and verify if the PDF viewer is shown.
    await tester.tap(find.text('Word of God'));
    await tester.pumpAndSettle(); // Wait for animations to complete
    expect(find.byType(SfPdfViewer), findsOneWidget);

    // Add more test cases based on your UI elements and interactions.
  });
}
