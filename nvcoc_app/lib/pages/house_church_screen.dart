import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:nvcoc_app/cubits/housechurch_cubit/housechurch_cubit.dart';
import 'package:nvcoc_app/resources/bottom_nav_bar.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class HouseChurchScreen extends StatelessWidget {
  const HouseChurchScreen({super.key});

  final EdgeInsets cardPadding = const EdgeInsets.all(14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: const NovaAppBar(),
      body: _HouseChurchList(),
    );
  }
}

class _HouseChurchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<HousechurchCubit>().getHouseChurches();
    return BlocBuilder<HousechurchCubit, HousechurchState>(
      builder: (context, state) {
        List<Card> houseChurches = state.houseChurches!.map(
          (houseChurch) {
            return Card(
              margin: cardPadding,
              elevation: 4.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: novaBlue,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: cardPadding,
                    child: Text(
                      houseChurch.name,
                      style: montserrat,
                    ),
                  ),
                  Padding(
                    padding: cardPadding,
                    child: Text(
                      '${houseChurch.leaders}\n\nLocation: ${houseChurch.location}',
                      style: montserrat,
                    ),
                  ),
                  TextButton(
                    onPressed: () async => await FlutterPhoneDirectCaller.callNumber(houseChurch.number),
                    child: Text(houseChurch.number),
                  ),
                ],
              ),
            );
          },
        ).toList();
        return ListView.builder(
          itemCount: houseChurches.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Column(
                children: [
                  Padding(
                    padding: cardPadding,
                    child: Text(
                      key: const Key('house_church_title'),
                      'FIND A HOUSE CHURCH NEAR YOU',
                      style: montserrat.copyWith(color: novaBlue, fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: cardPadding,
                    child: Text(
                      'The NOVA Church of Christ believes that you experience what '
                      'we’re all about in community. In order to do that we are '
                      'organized into small groups that we call House Churches. We'
                      ' would love for you to connect with a house church near you '
                      ' and experience the Kingdom of God in community. Check the list '
                      'below for the closest house church and contact information. ',
                      style: montserrat.copyWith(color: novaBlue),
                    ),
                  ),
                ],
              );
            } else {
              return houseChurches[index - 1];
            }
          },
        );
      },
    );
  }
}
