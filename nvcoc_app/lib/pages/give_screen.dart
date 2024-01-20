import 'package:flutter/material.dart';
import 'package:nvcoc_app/resources/bottom_nav_bar.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class GiveScreen extends StatelessWidget {
  const GiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const NovaAppBar(),
        bottomNavigationBar: const BottomNavBar(),
        body: ListView(
          children: [
            seperation,
            const ConnectColumn(
              detail: 'Access any of our Giving Options',
              title: 'GIVE',
              padding: cardPadding,
            ),
            const GiveBox(
              image: 'online_bill_pay.png',
              label: 'ONLINE BILL PAY',
              subtext: '''Use your bank's own "bill pay" feature: Create a bill payable to NVCOC mailing address: P.O. Box 979, Herndon, VA 20172

In the memo line, indicate: weekly, poor, mission, etc. The bill can be set up as one time or recurring''',
            ),
            const GiveBox(
              image: 'zelle.png',
              label: 'admin@nvcoc.org',
              subtext: '',
              url: 'https://zellepay.com',
            ),
            const GiveBox(
              image: 'credit.png',
              label: 'CREDIT CARD/PAYPAL',
              subtext: '''Give via your personal PayPal account or credit card. Please note this option incurs online processing fees.''',
              url: 'https://form.jotform.com/72153472250146',
            ),
          ],
        ));
  }
}
