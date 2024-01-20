import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

const Color white = Colors.white;
const Color black = Colors.black;
const Color novaBlue = Color(0xff04578f);
const Color novaYellow = Color(0xfff5c937);
TextStyle montserrat = GoogleFonts.montserrat();
SizedBox seperation = const SizedBox(height: 10);
const EdgeInsets cardPadding = EdgeInsets.all(14);

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
  final String? url;

  const ConnectTile({super.key, required this.detail, required this.leading, this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: url != null ? () => canLaunchUrl(url!) : null,
      child: ListTile(
          leading: Text(
            leading,
            style: montserrat.copyWith(color: novaBlue, fontWeight: FontWeight.bold),
          ),
          title: Text(
            detail,
            style: montserrat.copyWith(fontSize: 14),
          )),
    );
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

class HomeNavCard extends StatelessWidget {
  final String image;
  final String route;
  const HomeNavCard({super.key, required this.image, required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(route),
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/$image'),
          fit: BoxFit.cover,
        )),
      ),
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

class IconImageSearch extends StatelessWidget {
  final String url;
  final String image;

  const IconImageSearch({super.key, required this.url, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => canLaunchUrl(url),
      child: Image(
        image: AssetImage(
          'assets/$image',
        ),
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.height * 0.05,
      ),
    );
  }
}

class CustomTextLaunchButton extends StatelessWidget {
  const CustomTextLaunchButton({super.key, required this.url, required this.title});
  final String url;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => canLaunchUrl(url),
      child: Text(
        title,
        style: montserrat.copyWith(fontWeight: FontWeight.bold, color: novaBlue),
      ),
    );
  }
}

Container horizontalLine = Container(
  padding: const EdgeInsets.only(top: 10),
  decoration: const BoxDecoration(
    border: Border(bottom: BorderSide(color: novaBlue)),
  ),
);

class MinistriesBox extends StatelessWidget {
  const MinistriesBox({super.key, required this.url, required this.image, required this.title, required this.fontSize});
  final String url;
  final String image;
  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => canLaunchUrl(url),
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/$image'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: montserrat.copyWith(fontSize: fontSize, fontWeight: FontWeight.bold, color: white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LeadershipCard extends StatelessWidget {
  const LeadershipCard({super.key, required this.leaders, required this.role, required this.image});
  final String leaders;
  final String role;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: const RoundedRectangleBorder(side: BorderSide(color: novaBlue)),
      margin: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(children: <InlineSpan>[
                  TextSpan(
                    text: '$leaders - ' '\n\n',
                    style: montserrat.copyWith(fontWeight: FontWeight.bold, color: black),
                  ),
                  TextSpan(
                    text: role,
                    style: montserrat.copyWith(color: black, fontStyle: FontStyle.italic),
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.asset('assets/$image'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GiveBox extends StatelessWidget {
  const GiveBox({super.key, required this.image, required this.label, required this.subtext, this.url});
  final String image;
  final String label;
  final String subtext;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: url != null ? () => canLaunchUrl(url!) : null,
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/$image'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                label,
                style: montserrat.copyWith(
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              Text(
                subtext,
                style: montserrat.copyWith(
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShareButton extends StatelessWidget {
  const ShareButton({super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(title));
  }
}

class ShareIconButtom extends StatelessWidget {
  final String imageName;
  final String name;
  final String jpegOrPng;
  final String subject;
  final Color iconColor;

  const ShareIconButtom({
    super.key,
    required this.iconColor,
    required this.imageName,
    required this.name,
    required this.jpegOrPng,
    required this.subject,
  });

  @override
  Widget build(BuildContext context) {
    IconData icon = Platform.isAndroid ? Icons.share : Icons.ios_share;
    return IconButton(
      icon: Icon(icon, color: iconColor),
      onPressed: () async {
        final image = await rootBundle.load('assets/$imageName');
        final buffer = image.buffer;

        Share.shareXFiles(
          [
            XFile.fromData(
              buffer.asUint8List(
                image.offsetInBytes,
                image.lengthInBytes,
              ),
              name: name,
              mimeType: 'image/$jpegOrPng',
            ),
          ],
          subject: subject,
        );
      },
    );
  }
}
