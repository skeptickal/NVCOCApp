import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/cubits/bible_cubit/bible_cubit.dart';
import 'package:nvcoc_app/resources/bible_lookup_mixin.dart';
import 'package:nvcoc_app/resources/bottom_nav_bar.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class BibleLookupScreen extends StatelessWidget with BibleLookupMixin {
  BibleLookupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BibleCubit, BibleState>(
      builder: (context, state) {
        TextButton searcher = TextButton(
          onPressed: () async {
            context.read<BibleCubit>().searchVerse('${bookLookup.text}+${verseLookup.text}');
          },
          child: const Text('Fetch Bible Verse'),
        );
        Text bibleVerseReader = Text(
          state.verse ?? "N/A",
          style: montserrat,
        );

        return Scaffold(
          appBar: const NovaAppBar(),
          bottomNavigationBar: const BottomNavBar(),
          body: ListView(
            children: [
              seperation,
              Center(
                child: Text(
                  'BIBLE VERSE LOOKUP',
                  style: montserrat.copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: novaBlue),
                ),
              ),
              Center(
                child: SubTitle(
                    padding: textBoxPadding,
                    textStyle: montserrat.copyWith(color: novaBlue),
                    subTitleText: 'Look up a scripture by it\'s notation! \nVersion: World English Bible, (WEB)'),
              ),
              SubTitle(padding: textBoxPadding, textStyle: montserrat, subTitleText: 'Book'),
              Padding(
                padding: textBoxPadding,
                child: DropdownButtonFormField<String>(
                  value: 'Select a book',
                  items: booksOfTheBible.map((book) {
                    return DropdownMenuItem<String>(
                      value: book,
                      child: Text(book),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    bookLookup.text = value ?? '';
                  },
                  decoration: textInputDecoration.copyWith(hintText: 'Select a book'),
                ),
              ),
              SubTitle(padding: textBoxPadding, textStyle: montserrat, subTitleText: 'Chaper + Verse(s)'),
              Padding(
                padding: textBoxPadding,
                child: TextFormField(
                  controller: verseLookup,
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: textInputDecoration.copyWith(hintText: 'e.g. 3:16-17'),
                ),
              ),
              searcher,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: bibleVerseReader,
              ),
            ],
          ),
        );
      },
    );
  }
}
