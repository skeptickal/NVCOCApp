import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/navbar.dart';

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
                  hintText: 'EmailAddress@Email.com',
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
            /*Checkbox(
                value: false,
                onChanged: (value) {
                  value = value!;
                }) */
          ],
        ),
      ),
    );
  }
}
