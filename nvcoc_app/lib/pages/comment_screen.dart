import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/cubits/comment_cubit/comment_cubit.dart';
import 'package:nvcoc_app/models/comment.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

import 'package:nvcoc_app/resources/comment_mixin.dart';

class CommentScreen extends StatelessWidget with CommentMixin {
  CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NovaAppBar(),
      body: BlocBuilder<CommentCubit, CommentState>(
        builder: (context, state) {
          final String dropdownValue = state.dropDownValue ?? 'Select One';
          final String dropdownValue1 = state.dropDownValue1 ?? 'Select One';
          return ListView(
            children: [
              Center(
                child: Text(
                  'Online Comment Cards',
                  style: montserrat.copyWith(
                    color: novaBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              seperation,
              Padding(
                padding: rowPadding,
                child: Text(
                    'Welcome to our online comment card and prayer request system. '
                    'Whether you’re a member or a guest to our church, our online '
                    'comment card allows you to place membership, change/update '
                    'existing membership information, and much more! To get started'
                    'just click on the start button below and we’ll guide you each '
                    'step of the way.',
                    style: montserrat.copyWith(color: novaBlue)),
              ),
              seperation,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SpacedSubTitle(subTitleText: 'First Name', textStyle: subTitleStyle),
                  SpacedSubTitle(subTitleText: 'Last Name', textStyle: subTitleStyle),
                ],
              ),
              Padding(
                padding: rowPadding,
                child: Row(
                  children: [
                    CustomTextBox(padding: sideBySideText, controller: firstName, hintText: 'First Name'),
                    CustomTextBox(padding: sideBySideText, controller: lastName, hintText: 'Last Name'),
                  ],
                ),
              ),
              SubTitle(padding: leftPadding, textStyle: subTitleStyle, subTitleText: 'Email Address'),
              CustomTextBox(padding: textBoxPadding, controller: email, hintText: 'emailaddress@email.com'),
              SubTitle(padding: leftPadding, textStyle: subTitleStyle, subTitleText: 'Comment/Prayer Request'),
              CustomTextBox(padding: textBoxPadding, controller: commenter, hintText: 'Comment/Prayer Request'),
              SubTitle(padding: leftPadding, textStyle: subTitleStyle, subTitleText: 'I would Like to. . .'),
              CustomDropdown(
                value: dropdownValue,
                items: const [
                  'Select One',
                  'Study the Bible',
                  'Be baptized',
                  'Become a Christian',
                  'Learn more about this church',
                  'Be restored',
                ],
                onChanged: (value) {
                  context.read<CommentCubit>().selectDropdown(value!);
                },
              ),
              SubTitle(padding: leftPadding, textStyle: subTitleStyle, subTitleText: 'I am. . .'),
              CustomDropdown(
                value: dropdownValue1,
                items: const [
                  'Select One',
                  'a Teenager',
                  'College Student',
                  'Single',
                  'Married',
                  'Divorced/Widowed',
                  'Parent',
                ],
                onChanged: (value) {
                  context.read<CommentCubit>().selectDropdown1(value!);
                },
              ),
              SubTitle(padding: leftPadding, textStyle: subTitleStyle, subTitleText: 'I am a member and my contact info has changed:'),
              CountryListPick(
                appBar: AppBar(
                  backgroundColor: novaBlue,
                  title: const Text('Pick Your Country'),
                ),
                theme: CountryTheme(
                  isShowFlag: true,
                  isShowTitle: true,
                  isShowCode: false,
                  isDownIcon: true,
                  showEnglishName: false,
                  labelColor: black,
                ),
                initialSelection: 'US',
                onChanged: (code) {
                  context.read<CommentCubit>().selectCode(code!);
                },
              ),
              SubTitle(padding: leftPadding, textStyle: subTitleStyle, subTitleText: 'Address Line 1'),
              CustomTextBox(padding: textBoxPadding, controller: address1, hintText: '1234 Example St.'),
              SubTitle(padding: leftPadding, textStyle: subTitleStyle, subTitleText: 'Address Line 2'),
              CustomTextBox(padding: textBoxPadding, controller: address2, hintText: 'APT #'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SpacedSubTitle(subTitleText: 'City', textStyle: subTitleStyle),
                  SpacedSubTitle(subTitleText: 'State', textStyle: subTitleStyle),
                  SpacedSubTitle(subTitleText: 'Zip', textStyle: subTitleStyle),
                ],
              ),
              Padding(
                padding: rowPadding,
                child: Row(
                  children: [
                    CustomTextBox(padding: sideBySideText, controller: city, hintText: 'City'),
                    CustomTextBox(padding: sideBySideText, controller: stateSelector, hintText: 'State'),
                    CustomTextBox(padding: sideBySideText, controller: zip, hintText: 'Zip Code'),
                  ],
                ),
              ),
              SubTitle(padding: leftPadding, textStyle: subTitleStyle, subTitleText: 'Phone'),
              CustomTextBox(padding: textBoxPadding, controller: phone, hintText: 'Phone'),
              SubTitle(padding: leftPadding, textStyle: subTitleStyle, subTitleText: 'Email'),
              CustomTextBox(padding: textBoxPadding, controller: email, hintText: 'Email'),
              TextButton(
                  onPressed: () => addCommentData(context),
                  child: Text(
                    'Submit Comment',
                    style: montserrat.copyWith(color: novaBlue),
                  ))
            ],
          );
        },
      ),
    );
  }

  void addCommentData(BuildContext context) {
    Comment comment = Comment(
      'comments',
      firstName.text,
      lastName.text,
      email.text,
      commenter.text,
      context.read<CommentCubit>().state.dropDownValue,
      context.read<CommentCubit>().state.dropDownValue1,
      context.read<CommentCubit>().state.code?.code,
      address1.text,
      address2.text,
      city.text,
      stateSelector.text,
      zip.text,
      phone.text,
      email2.text,
    );
    context.read<CommentCubit>().addComment(comment);
    firstName.clear();
    lastName.clear();
    email.clear();
    commenter.clear();
    context.read<CommentCubit>().selectDropdown('Select One');
    context.read<CommentCubit>().selectDropdown1('Select One');
    context.read<CommentCubit>().selectCode(CountryCode(code: 'US'));
    address1.clear();
    address2.clear();
    city.clear();
    stateSelector.clear();
    zip.clear();
    phone.clear();
    email2.clear();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Comment Submitted',
          style: montserrat,
        ),
        duration: const Duration(
          seconds: 1,
        ),
      ),
    );
  }
}
