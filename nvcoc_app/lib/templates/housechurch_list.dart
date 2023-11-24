import 'package:flutter/material.dart';
import 'package:nvcoc_app/templates/housechurchcard.dart';
import 'package:nvcoc_app/templates/housechurches.dart';
import 'package:provider/provider.dart';

class HouseChurchList extends StatefulWidget {
  const HouseChurchList({super.key});

  @override
  State<HouseChurchList> createState() => _HouseChurchListState();
}

class _HouseChurchListState extends State<HouseChurchList> {
  @override
  Widget build(BuildContext context) {
    final houseChurches = Provider.of<List<HouseChurches>>(context);

    /*houseChurches.forEach((houseChurch) {
      print(houseChurch.leaders);
      print(houseChurch.location);
      print(houseChurch.name);
      print(houseChurch.number);
    }); */
    return ListView.builder(
      itemCount: houseChurches.length,
      itemBuilder: (context, index) {
        return HouseChurchCard(house: houseChurches[index]);
      },
    );
  }
}
