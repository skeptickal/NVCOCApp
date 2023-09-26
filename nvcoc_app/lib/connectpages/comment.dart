import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/navbar.dart';
import 'package:country_list_pick/country_list_pick.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _comment = TextEditingController();
  final TextEditingController _address1 = TextEditingController();
  final TextEditingController _address2 = TextEditingController();
  final TextEditingController _city = TextEditingController();
  final TextEditingController _state = TextEditingController();
  final TextEditingController _zip = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _email2 = TextEditingController();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      drawer: NavBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF04578f), Colors.white]),
        ),
        child: ListView(
          children: [
            Card(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFFF5c937))),
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'ONLINE COMMENT CARDS',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff04578f),
                        fontSize: 20,
                        letterSpacing: 2.0),
                  ),
                ),
              ),
            ),
            Card(
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xFFF5c937))),
              margin: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Welcome to our online comment card and prayer '
                    'request system. Whether you’re a member or a guest '
                    'to our church, our online comment card allows you '
                    'to place membership, change/update existing membership '
                    'information, and much more! ',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.normal,
                        color: const Color(0xff04578f),
                        fontSize: 12,
                        letterSpacing: 2.0),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'First Name',
                      style: GoogleFonts.montserrat(
                          color: Color.fromARGB(248, 255, 255, 255)),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    'Last Name',
                    style: GoogleFonts.montserrat(
                        color: Color.fromARGB(248, 255, 255, 255)),
                  )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                      child: TextField(
                        controller: _firstName,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          hintText: 'First Name',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xfff5c937),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                      child: TextField(
                        controller: _lastName,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          hintText: 'Last Name',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xfff5c937),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'Email Address',
                style: GoogleFonts.montserrat(
                    color: Color.fromARGB(248, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 12, 20, 12),
              child: TextField(
                controller: _email,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'emailaddress@email.com',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xfff5c937),
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'Comment/Prayer Request',
                style: GoogleFonts.montserrat(
                    color: Color.fromARGB(248, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 12, 20, 12),
              child: TextField(
                controller: _comment,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Comment/Prayer Request',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xfff5c937),
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'I would like to. . . (check all that apply)',
                style: GoogleFonts.montserrat(
                    color: Color.fromARGB(248, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('Study the Bible with Someone',
                      style: GoogleFonts.montserrat())
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text('Be baptized', style: GoogleFonts.montserrat()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('Become a Christian', style: GoogleFonts.montserrat()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('Learn more about this church',
                      style: GoogleFonts.montserrat()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('Be restored', style: GoogleFonts.montserrat()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text('Place Membership', style: GoogleFonts.montserrat()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'I am . . . (check all that apply)',
                style: GoogleFonts.montserrat(
                    color: Color.fromARGB(248, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('a Teenager', style: GoogleFonts.montserrat())
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('College Student', style: GoogleFonts.montserrat()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  Text('Single', style: GoogleFonts.montserrat()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('Married', style: GoogleFonts.montserrat()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('Divorce/Widowed', style: GoogleFonts.montserrat()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  Text('Parent', style: GoogleFonts.montserrat()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'I am a member and my contact information has changed:',
                style: GoogleFonts.montserrat(
                    color: Color.fromARGB(248, 255, 255, 255)),
              ),
            ),
            CountryListPick(
              appBar: AppBar(
                backgroundColor: Color(0xFF04578f),
                title: Text('Pick Your Country'),
              ),
              theme: CountryTheme(
                isShowFlag: true,
                isShowTitle: true,
                isShowCode: false,
                isDownIcon: true,
                showEnglishName: false,
                labelColor: Color.fromARGB(255, 0, 0, 0),
              ),
              initialSelection: 'US',
              onChanged: (code) {},
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'Address Line 1 (required)',
                style:
                    GoogleFonts.montserrat(color: Color.fromARGB(248, 0, 0, 0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 12, 20, 12),
              child: TextField(
                controller: _address1,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: '1234 Example St.',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xfff5c937),
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'Address Line 2',
                style:
                    GoogleFonts.montserrat(color: Color.fromARGB(248, 0, 0, 0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 12, 20, 12),
              child: TextField(
                controller: _address2,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'APT #',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xfff5c937),
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'City (required)',
                      style: GoogleFonts.montserrat(
                          color: Color.fromARGB(248, 0, 0, 0)),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    'State (required)',
                    style: GoogleFonts.montserrat(
                        color: Color.fromARGB(248, 0, 0, 0)),
                  )),
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    'ZIP (required)',
                    style: GoogleFonts.montserrat(
                        color: Color.fromARGB(248, 0, 0, 0)),
                  )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                      child: TextField(
                        controller: _city,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          hintText: 'City',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xfff5c937),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                      child: TextField(
                        controller: _state,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          hintText: 'State',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xfff5c937),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                      child: TextField(
                        controller: _zip,
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          hintText: 'ZIP Code',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xfff5c937),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'Phone',
                style:
                    GoogleFonts.montserrat(color: Color.fromARGB(248, 0, 0, 0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 12, 20, 12),
              child: TextField(
                controller: _phone,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Phone',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xfff5c937),
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'Email',
                style:
                    GoogleFonts.montserrat(color: Color.fromARGB(248, 0, 0, 0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 12, 20, 12),
              child: TextField(
                controller: _email2,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xfff5c937),
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff04578f)),
                  child: Text('SUBMIT',
                      style:
                          GoogleFonts.montserrat(fontWeight: FontWeight.bold))),
            )
          ],
        ),
      ),
    );
  }
}
