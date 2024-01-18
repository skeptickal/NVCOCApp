import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/cubit/comment_cubit.dart';
import 'package:nvcoc_app/models/comment.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class CommentScreen extends StatelessWidget {
  CommentScreen({super.key});
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
  final String join = 'Select One';
  final String iAm = 'Select One';
  final String country = 'US';
  final bool value = false;
  final String dropdownValue = 'Select One';
  final String dropdownValue1 = 'Select One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    'First Name',
                    style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 255, 255, 255)),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                    child: Text(
                  'Last Name',
                  style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 255, 255, 255)),
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
              style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 255, 255, 255)),
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
              'Comment/Prayer Request', //change this to something that can ask for info about ministries as well?
              style: GoogleFonts.montserrat(color: white),
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
                    color: novaYellow,
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
              style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 255, 255, 255)),
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
              onChanged: (string) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
            child: Text(
              'I am . . . ',
              style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 255, 255, 255)),
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
              onChanged: (string) {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
            child: Text(
              'I am a member and my contact information has changed:',
              style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 255, 255, 255)),
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
            // onChanged: (code) {
            //   setState(() {
            //     country = code?.code ?? '';
            //   });
            // },
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
            child: Text(
              'Address Line 1 (required)',
              style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 0, 0, 0)),
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
              style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 0, 0, 0)),
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
                    style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 0, 0, 0)),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                    child: Text(
                  'State (required)',
                  style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 0, 0, 0)),
                )),
              ),
              Expanded(
                child: Center(
                    child: Text(
                  'ZIP (required)',
                  style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 0, 0, 0)),
                )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
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
              style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 0, 0, 0)),
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
                    color: novaYellow,
                  ),
                ),
                fillColor: white,
                filled: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(22.0, 0, 0, 0),
            child: Text(
              'Email',
              style: GoogleFonts.montserrat(color: const Color.fromARGB(248, 0, 0, 0)),
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
                    color: novaYellow,
                  ),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          TextButton(onPressed: () => addCommentData(context), child: const Text('Add Comment'))
        ],
      ),
    );
  }

  void addCommentData(BuildContext context) {
    Comment comment = Comment('comments', _firstName.text, _lastName.text, _email.text, _comment.text, join, iAm, country, _address1.text, _address2.text,
        _city.text, _state.text, _zip.text, _phone.text, _email2.text);
    context.read<CommentCubit>().addComment(comment);
  }
}
