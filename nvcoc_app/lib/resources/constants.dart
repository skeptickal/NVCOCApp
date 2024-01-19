import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

const Color white = Colors.white;
const Color black = Colors.black;
const Color novaBlue = Color(0xff04578f);
const Color novaYellow = Color(0xfff5c937);
TextStyle montserrat = GoogleFonts.montserrat();
SizedBox seperation = const SizedBox(height: 10);

//Text Field Format

const textInputDecoration = InputDecoration(
  fillColor: white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: novaBlue, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: novaYellow, width: 2.0),
  ),
);

class CustomTextBox extends StatelessWidget {
  final EdgeInsets padding;
  final TextEditingController controller;
  final String hintText;
  const CustomTextBox({required this.padding, required this.controller, required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: padding,
        child: TextFormField(
          controller: controller,
          maxLines: null,
          keyboardType: TextInputType.multiline,
          decoration: textInputDecoration.copyWith(hintText: hintText),
        ),
      ),
    );
  }
}

//Sub Titles for Text Boxes
class SubTitle extends StatelessWidget {
  final EdgeInsets padding;
  final TextStyle textStyle;
  final String subTitleText;
  const SubTitle({
    required this.padding,
    required this.textStyle,
    required this.subTitleText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        subTitleText,
        style: textStyle,
      ),
    );
  }
}

class SpacedSubTitle extends StatelessWidget {
  final String subTitleText;
  final TextStyle textStyle;

  const SpacedSubTitle({
    required this.subTitleText,
    required this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          subTitleText,
          style: textStyle,
        ),
      ),
    );
  }
}

class CustomDropdown extends StatelessWidget {
  final String value;
  final List<String> items;
  final Function(String?) onChanged;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 10, 50, 10),
      child: DropdownButton<String>(
        isExpanded: true,
        value: value,
        icon: const Icon(Icons.menu),
        style: const TextStyle(color: black),
        underline: Container(height: 2, color: white),
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}

//ListTiles for Connect With Us
class ConnectTile extends StatelessWidget {
  final String detail;
  final String leading;

  const ConnectTile({super.key, required this.detail, required this.leading});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text(
          leading,
          style: montserrat.copyWith(color: novaBlue, fontWeight: FontWeight.bold),
        ),
        title: Text(
          detail,
          style: montserrat.copyWith(fontSize: 14),
        ));
  }
}

class ConnectColumn extends StatelessWidget {
  final String detail;
  final String title;
  final EdgeInsets padding;
  const ConnectColumn({super.key, required this.detail, required this.title, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: montserrat.copyWith(fontWeight: FontWeight.bold, fontSize: 16, color: novaBlue),
          ),
        ),
        seperation,
        Padding(
          padding: padding,
          child: Text(
            detail,
            style: montserrat,
          ),
        )
      ],
    );
  }
}

//URL Launching
Future<void> canLaunchUrl(String url) async {
  Uri url0 = Uri.parse(url);
  if (!await launchUrl(url0)) {
    throw Exception('Could Not Launch $url0');
  }
}
