import 'package:flutter/material.dart';
import 'package:nvcoc_app/constants/screen_wrapper.dart';
import '../constants/colors.dart';
import '../constants/other_widgets.dart';
import '../constants/spacing.dart';
import '../constants/sub_titles.dart';
import '../constants/text_styles.dart';

class GiveScreen extends StatelessWidget {
  const GiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
        child: SingleChildScrollView(
      child: Column(
        children: [
          seperation,
          Center(
            child: Text(
              key: const Key('give_title'),
              'CONTRIBUTION',
              style: montserrat.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: novaBlue),
            ),
          ),
          Center(
            child: SubTitle(
              key: const Key('calendar_subtitle'),
              padding: const EdgeInsets.all(14),
              textStyle: montserrat.copyWith(color: novaBlue, fontStyle: FontStyle.italic),
              subTitleText: 'Check out our giving options below!',
            ),
          ),
          const GiveBox(
            key: Key('online_bill_pay'),
            image: 'online_bill_pay.png',
            label: 'ONLINE BILL PAY',
            subtext:
                '''Use your bank's own "bill pay" feature: Create a bill payable to NVCOC mailing address: P.O. Box 979, Herndon, VA 20172 \n\nIn the memo line, indicate: weekly, poor, mission, etc. The bill can be set up as one time or recurring''',
          ),
          const GiveBox(
            key: Key('zelle'),
            image: 'zelle.png',
            label: 'admin@nvcoc.org',
            subtext: '',
            url: 'https://zellepay.com',
          ),
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
