//Mixins
import 'package:flutter/material.dart';
import 'package:nvcoc_app/constants/colors.dart';
import 'package:nvcoc_app/constants/text_styles.dart';

mixin CommentMixin {
  final TextEditingController email = TextEditingController();
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController commenter = TextEditingController();
  final TextEditingController address1 = TextEditingController();
  final TextEditingController address2 = TextEditingController();
  final TextEditingController city = TextEditingController();
  final TextEditingController stateSelector = TextEditingController();
  final TextEditingController zip = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email2 = TextEditingController();
  final EdgeInsets sideBySideText = const EdgeInsets.fromLTRB(8.0, 0, 8, 0);
  final EdgeInsets rowPadding = const EdgeInsets.all(12.0);
  final EdgeInsets leftPadding = const EdgeInsets.only(left: 20);
  final EdgeInsets textBoxPadding = const EdgeInsets.fromLTRB(20.0, 12, 20, 12);
  final EdgeInsets dropDownPadding = const EdgeInsets.fromLTRB(24, 10, 50, 10);
  final TextStyle subTitleStyle = montserrat.copyWith(color: black, fontSize: 14, fontStyle: FontStyle.italic);
}

mixin BibleLookupMixin {
  final EdgeInsets textBoxPadding = const EdgeInsets.fromLTRB(20.0, 12, 20, 12);
  final List<String> booksOfTheBible = [
    'Select a book',
    'Genesis',
    'Exodus',
    'Leviticus',
    'Numbers',
    'Deuteronomy',
    'Joshua',
    'Judges',
    'Ruth',
    '1 Samuel',
    '2 Samuel',
    '1 Kings',
    '2 Kings',
    '1 Chronicles',
    '2 Chronicles',
    'Ezra',
    'Nehemiah',
    'Esther',
    'Job',
    'Psalm',
    'Proverbs',
    'Ecclesiastes',
    'Song of Solomon',
    'Isaiah',
    'Jeremiah',
    'Lamentations',
    'Ezekiel',
    'Daniel',
    'Hosea',
    'Joel',
    'Amos',
    'Obadiah',
    'Jonah',
    'Micah',
    'Nahum',
    'Habakkuk',
    'Zephaniah',
    'Haggai',
    'Zechariah',
    'Malachi',
    'Matthew',
    'Mark',
    'Luke',
    'John',
    'Acts',
    'Romans',
    '1 Corinthians',
    '2 Corinthians',
    'Galatians',
    'Ephesians',
    'Philippians',
    'Colossians',
    '1 Thessalonians',
    '2 Thessalonians',
    '1 Timothy',
    '2 Timothy',
    'Titus',
    'Philemon',
    'Hebrews',
    'James',
    '1 Peter',
    '2 Peter',
    '1 John',
    '2 John',
    '3 John',
    'Jude',
    'Revelation'
  ];
}
