import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:nvcoc_app/cubits/housechurch_cubit/housechurch_cubit.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class HouseChurchScreen extends StatelessWidget {
  const HouseChurchScreen({super.key});
  final EdgeInsets cardPadding = const EdgeInsets.all(14);

  @override
  Widget build(BuildContext context) {
    context.read<HousechurchCubit>().getHouseChurches();
    return BlocBuilder<HousechurchCubit, HousechurchState>(builder: (context, state) {
      List<Widget> houseChurches = state.houseChurches!.map(
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
      return Scaffold(
          appBar: const NovaAppBar(),
          body: ListView.builder(
            itemCount: houseChurches.length,
            itemBuilder: (context, index) {
              return houseChurches[index];
            },
          ));
    });
  }
}
