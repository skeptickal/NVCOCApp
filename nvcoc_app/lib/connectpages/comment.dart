import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/firebase_options.dart';
import 'package:nvcoc_app/services/database.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
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
  String join = 'Select One';
  String iAm = 'Select One';
  String country = 'US';
  bool value = false;
  String dropdownValue = 'Select One';
  String dropdownValue1 = 'Select One';

  void dropDownCallBack(String? selectedValue) {
    if (selectedValue is String) {
      setState(() => join = selectedValue);
      dropdownValue = selectedValue;
    }
  }

  void dropDownCallBack1(String? selectedValue) {
    if (selectedValue is String) {
      setState(() => iAm = selectedValue);
      dropdownValue1 = selectedValue;
    }
  }

  Future dataBaseConnect() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      //drawer: NavBar(),
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
                          color: const Color.fromARGB(248, 255, 255, 255)),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    'Last Name',
                    style: GoogleFonts.montserrat(
                        color: const Color.fromARGB(248, 255, 255, 255)),
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
                    color: const Color.fromARGB(248, 255, 255, 255)),
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
                    color: const Color.fromARGB(248, 255, 255, 255)),
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
                'I would like to. . .',
                style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(248, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 10, 50, 10),
              child: DropdownButton<String>(
                isExpanded: true,
                value: dropdownValue,
                icon: const Icon(Icons.menu),
                style: const TextStyle(color: Colors.black),
                underline: Container(height: 2, color: Colors.white),
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Select One',
                    child: Text(
                      'Select One',
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Study the Bible',
                    child: Text('Study the Bible'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Be baptized',
                    child: Text('Be baptized'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Become a Christian',
                    child: Text('Become a Christian'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Learn more about this church',
                    child: Text('Learn more about this church'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Be restored',
                    child: Text('Place Membership'),
                  ),
                ],
                onChanged: dropDownCallBack,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'I am . . . ',
                style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(248, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 10, 50, 10),
              child: DropdownButton<String>(
                isExpanded: true,
                value: dropdownValue1,
                icon: const Icon(Icons.menu),
                style: const TextStyle(color: Colors.black),
                underline: Container(height: 2, color: Colors.white),
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Select One',
                    child: Text(
                      'Select One',
                    ),
                  ),
                  DropdownMenuItem<String>(
                    value: 'a Teenager',
                    child: Text('a Teenager'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'College Student',
                    child: Text('College Student'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Single',
                    child: Text('Single'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Married',
                    child: Text('Married'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Divorced/Widowed',
                    child: Text('Divorced/Widowed'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Parent',
                    child: Text('Parent'),
                  ),
                ],
                onChanged: dropDownCallBack1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'I am a member and my contact information has changed:',
                style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(248, 255, 255, 255)),
              ),
            ),
            CountryListPick(
              appBar: AppBar(
                backgroundColor: const Color(0xFF04578f),
                title: const Text('Pick Your Country'),
              ),
              theme: CountryTheme(
                isShowFlag: true,
                isShowTitle: true,
                isShowCode: false,
                isDownIcon: true,
                showEnglishName: false,
                labelColor: const Color.fromARGB(255, 0, 0, 0),
              ),
              initialSelection: 'US',
              onChanged: (code) {
                setState(() {
                  country = code?.code ?? '';
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
              child: Text(
                'Address Line 1 (required)',
                style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(248, 0, 0, 0)),
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
                style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(248, 0, 0, 0)),
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
                          color: const Color.fromARGB(248, 0, 0, 0)),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    'State (required)',
                    style: GoogleFonts.montserrat(
                        color: const Color.fromARGB(248, 0, 0, 0)),
                  )),
                ),
                Expanded(
                  child: Center(
                      child: Text(
                    'ZIP (required)',
                    style: GoogleFonts.montserrat(
                        color: const Color.fromARGB(248, 0, 0, 0)),
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
                style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(248, 0, 0, 0)),
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
                style: GoogleFonts.montserrat(
                    color: const Color.fromARGB(248, 0, 0, 0)),
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
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Comment Submitted'),
                        duration: Duration(
                          milliseconds: 1000,
                        ),
                      ),
                    );
                    dataBaseConnect();
                    DatabaseService().submitCommentCard(
                      _firstName.text,
                      _lastName.text,
                      _email.text,
                      _comment.text,
                      join,
                      iAm,
                      country,
                      _address1.text,
                      _address2.text,
                      _city.text,
                      _state.text,
                      _zip.text,
                      _phone.text,
                      _email2.text,
                    );
                    _firstName.clear();
                    _lastName.clear();
                    _email.clear();
                    _comment.clear();
                    _address1.clear();
                    _address2.clear();
                    _city.clear();
                    _state.clear();
                    _zip.clear();
                    _phone.clear();
                    _email2.clear();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff04578f)),
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
