import 'package:flutter/material.dart';
import 'package:nvcoc_app/constants/screen_wrapper.dart';
import '../constants/connect_with_us_widgets.dart';
import '../constants/other_widgets.dart';
import '../constants/spacing.dart';

class GiveScreen extends StatelessWidget {
  const GiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
        child: SingleChildScrollView(
      child: Column(
        children: [
          seperation,
          const ConnectColumn(
            key: Key('give_title'),
            detail: 'Access any of our Giving Options',
            title: 'GIVE',
            padding: cardPadding,
          ),
          const GiveBox(
            key: Key('online_bill_pay'),
            image: 'online_bill_pay.png',
            label: 'ONLINE BILL PAY',
            subtext:
                '''Use your bank's own "bill pay" feature: Create a bill payable to NVCOC mailing address: P.O. Box 979, Herndon, VA 20172 \n\nIn the memo line, indicate: weekly, poor, mission, etc. The bill can be set up as one time or recurring''',
          ),
          seperation,
          const GiveBox(
            key: Key('zelle'),
            image: 'zelle.png',
            label: 'admin@nvcoc.org',
            subtext: '',
            url: 'https://zellepay.com',
          ),
          seperation,
          const GiveBox(
            key: Key('jotform'),
            image: 'credit.png',
            label: 'CREDIT CARD/PAYPAL',
            subtext: '''Give via your personal PayPal account or credit card. Please note this option incurs online processing fees.''',
            url: 'https://form.jotform.com/72153472250146',
          ),
        ],
      ),
    ));
  }
}
