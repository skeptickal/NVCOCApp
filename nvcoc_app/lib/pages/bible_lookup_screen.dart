import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/constants/colors.dart';
import 'package:nvcoc_app/constants/screen_wrapper.dart';
import 'package:nvcoc_app/cubits/bible_cubit/bible_cubit.dart';

import '../constants/input_decorations.dart';
import '../constants/mixins.dart';
import '../constants/spacing.dart';
import '../constants/sub_titles.dart';
import '../constants/text_styles.dart';

class BibleLookupScreen extends StatelessWidget {
  const BibleLookupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
        child: ListView(
      children: [
        _TitleAndIntro(),
        _BookInput(),
        _ChapterVerseInput(),
        const _BibleVerseFetchButtonAndReader(),
      ],
    ));
  }
}

class _TitleAndIntro extends StatelessWidget with BibleLookupMixin {
  _TitleAndIntro();

  @override
  Widget build(BuildContext context) {
    return Column(
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
              subTitleText: 'Look up a scripture by its notation! \nVersion: World English Bible (WEB)'),
        ),
      ],
    );
  }
}

class _BookInput extends StatelessWidget with BibleLookupMixin {
  _BookInput();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }
}

class _ChapterVerseInput extends StatelessWidget with BibleLookupMixin {
  _ChapterVerseInput();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubTitle(padding: textBoxPadding, textStyle: montserrat, subTitleText: 'Chapter + Verse(s)'),
        Padding(
          padding: textBoxPadding,
          child: TextFormField(
            controller: verseLookup,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: textInputDecoration.copyWith(hintText: 'e.g. 3:16-17'),
          ),
        ),
      ],
    );
  }
}

class _SearchButton extends StatelessWidget with BibleLookupMixin {
  final BibleState state;
  _SearchButton({required this.state});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        FocusScope.of(context).unfocus();
        context.read<BibleCubit>().searchVerse('${bookLookup.text}+${verseLookup.text}');
      },
      child: const Text('Fetch Bible Verse'),
    );
  }
}

class _ScriptureOutput extends StatelessWidget {
  final BibleState state;
  const _ScriptureOutput({required this.state});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        state.verse ?? "N/A",
        style: montserrat,
      ),
    );
  }
}

class _BibleVerseFetchButtonAndReader extends StatelessWidget {
  const _BibleVerseFetchButtonAndReader();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BibleCubit, BibleState>(
      builder: (BuildContext context, BibleState state) {
        return Column(
          children: [
            _SearchButton(state: state),
            _ScriptureOutput(state: state),
          ],
        );
      },
    );
  }
}
