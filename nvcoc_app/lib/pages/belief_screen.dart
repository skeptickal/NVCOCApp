import 'package:flutter/material.dart';

import 'package:nvcoc_app/constants/connect_with_us_widgets.dart';
import 'package:nvcoc_app/constants/screen_wrapper.dart';

import 'package:nvcoc_app/constants/spacing.dart';

class BeliefScreen extends StatelessWidget {
  const BeliefScreen({super.key});

  final String acts2 =
      'Acts 2:42-47 \nThey devoted themselves to the apostles\' teaching and to the fellowship, to the breaking of bread and to prayer. Everyone was filled with awe, and many wonders and miraculous signs were done by the apostles. All the believers were together and had everything in common. Selling their possessions and goods, they gave to anyone as he had need. Every day they continued to meet together in the temple courts. They broke bread in their homes and ate together with glad and sincere hearts, praising God and enjoying the favor of all the people. And the Lord added to their number daily those who were being saved.';
  final String him =
      'God is the creator of all, who adopts us his children, encourages us as a father, and passionately loves us like a husband. Jesus is not only the son of God, but savior and brother to us. His life teaches us. His death heals us. His resurrection promises us eternal life. The Holy Spirit is the unbound power of God in the form of helper, counselor, and advocate who voices our needs to God on our behalf.';
  final String us =
      'We are a group who loves God supremely, loves one another deeply, and helps the needy regularly. We stand in awe of God when we gather as a large group. We stand in love and service when we gather in house churches. As Christ\'s body on earth, we represent so many different life experiences, cultural backgrounds, as well as stages in life. We are absolutely a church for everyone.';
  final String you =
      'No matter who you are, where you live, or where you are spiritually, we welcome you into the community. Whatever goals you have or questions to ask spiritually, we want to help the Bible become alive and active in your life as it has in ours. We want you to experience life to the full, overcome the challenges of life, and embrace God\'s purpose for your life.';
  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
        child: ListView(
      children: [
        seperation,
        ConnectColumn(detail: acts2, title: 'OUR BELIEFS', padding: cardPadding),
        seperation,
        ConnectColumn(detail: him, title: 'HIM', padding: cardPadding),
        seperation,
        ConnectColumn(detail: us, title: 'US', padding: cardPadding),
        seperation,
        ConnectColumn(detail: you, title: 'YOU', padding: cardPadding)
      ],
    ));
  }
}
