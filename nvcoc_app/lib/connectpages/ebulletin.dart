import 'package:flutter/material.dart';
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
  Future<void> _launchUrl(String _url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw Exception('Could not launch $_url');
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
            floatingActionButton: NovaButton(),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 100, 100, 20),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            _launchUrl(eBulletin.eBulletinLink!);
                          },
                          icon: const Icon(Icons.menu_book),
                          label: const Text('View eBulletin'),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(novaBlue)),
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  );
                },
              ),
            )));
  }
}
