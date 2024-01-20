// Dropdown
import 'package:flutter/material.dart';

import 'colors.dart';

class CustomDropdown extends StatelessWidget {
  final String value;
  final List<String> items;
  final Function(String?) onChanged;

  const CustomDropdown({
    super.key,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 10, 50, 10),
      child: DropdownButton<String>(
        isExpanded: true,
        value: value,
        icon: const Icon(Icons.menu),
        style: const TextStyle(color: black),
        underline: Container(height: 2, color: white),
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}