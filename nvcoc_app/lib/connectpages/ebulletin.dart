import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nvcoc_app/services/database.dart';
import 'package:nvcoc_app/shared/constants.dart';
import 'package:nvcoc_app/templates/ebulletin_link.dart';
import 'package:nvcoc_app/templates/nova_appbar.dart';
import 'package:nvcoc_app/templates/novabutton.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class EBulletinScreen extends StatelessWidget {
  const EBulletinScreen({super.key});
  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<EBulletin> eBulletinLink = context.watch<List<EBulletin>>();

    return StreamProvider<List<EBulletin>>.value(
        value: DatabaseService().eBulletinLink,
        catchError: (context, error) {
          // Handle the error here
          print("Error in stream: $error");
          return [];
        },
        initialData: const [],
        child: Scaffold(
            appBar: const NovaAppBar(),
            floatingActionButton: const NovaButton(),
            body: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [novaBlue, Colors.white]),
              ),
              child: ListView.builder(
                itemCount: eBulletinLink.length,
                itemBuilder: (context, index) {
                  EBulletin eBulletin = eBulletinLink[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GestureDetector(
                        onTap: () => _launchUrl(eBulletin.eBulletinLink!),
                        child: Container(
                          width: 250,
                          height: 250,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/newsletter.png'),
                            fit: BoxFit.cover,
                          )),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  ' VIEW E-BULLETIN',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0,
                                  ),
                                ),
                                Text(
                                  'UPDATED WEEKLY',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            _launchUrl('https://nvcoc.church/e-invites'),
                        child: Container(
                          width: 250,
                          height: 250,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/evites.jpg'),
                            fit: BoxFit.cover,
                          )),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  ' VIEW E-INVITES',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0,
                                  ),
                                ),
                                Text(
                                  '',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )));
  }
}
