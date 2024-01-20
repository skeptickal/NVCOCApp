import 'package:flutter/material.dart';
import 'package:nvcoc_app/resources/bottom_nav_bar.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class MinistriesScreen extends StatelessWidget {
  const MinistriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      bottomNavigationBar: const BottomNavBar(),
      body: ListView(
        children: [
          seperation,
          const ConnectColumn(
              detail: 'Check out our Ministries by clicking their photo, and scroll further to view our leadership team!',
              title: 'MINISTRIES + LEADERSHIP',
              padding: cardPadding),
          const MinistriesBox(
            url: 'https://www.nvcoc.church/youthandfamily',
            image: 'yf.jpeg',
            title: 'YOUTH AND FAMILY MINISTRY',
            fontSize: 23,
          ),
          seperation,
          const MinistriesBox(
            url: 'https://www.nvcoc.church/campus',
            image: 'campus1.jpg',
            title: 'CAMPUS',
            fontSize: 50,
          ),
          seperation,
          const MinistriesBox(
            url: 'https://www.nvcoc.church/mosaic',
            image: 'mosaic.png',
            title: 'MOSAIC',
            fontSize: 50,
          ),
          seperation,
          horizontalLine,
          seperation,
          seperation,
          const LeadershipCard(
            leaders: 'Floyd and Tamara Grossett',
            role: 'Congregational Evangelist & Women’s Ministry Leader (South/East Region)',
            image: 'grossets.png',
          ),
          const LeadershipCard(
            leaders: 'Paolo and Cara Ugolini',
            role: 'Evangelist & Women’s Ministry Leader (West Region)',
            image: 'ugolini.png',
          ),
          const LeadershipCard(
            leaders: 'Jack and Cathy Rosenquist',
            role: 'Elder and Elder\'s Wife',
            image: 'rosenquist.jpg',
          ),
          const LeadershipCard(
            leaders: 'Matt and Katy Fisk',
            role: 'Evangelist & Women’s Ministry Leader (Mosaic Ministry)',
            image: 'Fisk.jpg',
          ),
          const LeadershipCard(
            leaders: 'Angel and Kristyn Vasquez',
            role: 'Youth and Family Leaders',
            image: 'vasquez.jpg',
          ),
          const LeadershipCard(
            leaders: 'Seth Gorrell',
            role: 'Campus Ministry Intern',
            image: 'seth.png',
          ),
          const LeadershipCard(
            leaders: 'Angelina Guerra',
            role: 'Campus Ministry Intern',
            image: 'angelina.jpg',
          ),
        ],
      ),
    );
  }
}
