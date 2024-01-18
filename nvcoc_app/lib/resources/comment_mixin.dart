import 'package:flutter/material.dart';
import 'package:nvcoc_app/resources/constants.dart';

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
  final TextStyle subTitleStyle = montserrat.copyWith(color: black, fontSize: 12, fontStyle: FontStyle.italic);
}
