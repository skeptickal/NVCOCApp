import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/constants/screen_wrapper.dart';
import 'package:nvcoc_app/cubits/comment_cubit/comment_cubit.dart';
import 'package:nvcoc_app/models/comment.dart';

import '../constants/colors.dart';
import '../constants/dropdown.dart';
import '../constants/mixins.dart';
import '../constants/spacing.dart';
import '../constants/sub_titles.dart';
import '../constants/text_fields.dart';
import '../constants/text_styles.dart';

class CommentScreen extends StatelessWidget with CommentMixin {
  CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      child: BlocBuilder<CommentCubit, CommentState>(
        builder: (context, state) {
          final String dropdownValue = state.dropDownValue ?? 'Select One';
          final String dropdownValue1 = state.dropDownValue1 ?? 'Select One';
          return ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text(
                    key: const Key('comment_cards_title'),
                    'Online Comment Cards',
                    style: montserrat.copyWith(
                      color: novaBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              seperation,
              Padding(
                padding: rowPadding,
                child: Text(
                    key: const Key('comment_cards_subtitle'),
                    'Welcome to our online comment card and prayer request system. '
                    'Whether you’re a member or a guest to our church, our online '
                    'comment card allows you to place membership, change/update '
                    'existing membership information, and much more!',
                    style: montserrat.copyWith(color: novaBlue)),
              ),
              seperation,
              Padding(
                padding: rowPadding,
                child: Row(
                  children: [
                    Flexible(
                      child: CustomTextBox(
                        padding: sideBySideText,
                        controller: firstName,
                        hintText: 'First Name',
                        subtitle: 'First Name',
                        key: const Key('first_name'),
                      ),
                    ),
                    Flexible(
                      child: CustomTextBox(
                        padding: sideBySideText,
                        controller: lastName,
                        hintText: 'Last Name',
                        subtitle: 'Last Name',
                        key: const Key('last_name'),
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextBox(
                padding: textBoxPadding,
                controller: email,
                hintText: 'emailaddress@email.com',
                subtitle: 'Email',
                key: const Key('email'),
              ),
              CustomTextBox(
                padding: textBoxPadding,
                controller: commenter,
                hintText: 'Comment/Prayer Request',
                subtitle: 'Comment',
                key: const Key('comment'),
              ),
              SubTitle(padding: leftPadding, textStyle: subTitleStyle, subTitleText: 'I would Like to. . .'),
              CustomDropdown(
                key: const Key('join_dropdown'),
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
                key: const Key('iAm_dropdown'),
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
              CustomTextBox(
                padding: textBoxPadding,
                controller: address1,
                hintText: '1234 Example St.',
                subtitle: 'Address Line 1',
                key: const Key('address1'),
              ),
              CustomTextBox(
                padding: textBoxPadding,
                controller: address2,
                hintText: 'APT #',
                subtitle: 'Address Line 2',
                key: const Key('address2'),
              ),
              Padding(
                padding: rowPadding,
                child: Row(
                  children: [
                    Flexible(
                      child: CustomTextBox(
                        padding: sideBySideText,
                        controller: city,
                        hintText: 'City',
                        subtitle: 'City',
                        key: const Key('city'),
                      ),
                    ),
                    Flexible(
                      child: CustomTextBox(
                        padding: sideBySideText,
                        controller: stateSelector,
                        subtitle: 'State',
                        hintText: 'State',
                        key: const Key('state'),
                      ),
                    ),
                    Flexible(
                      child: CustomTextBox(
                        padding: sideBySideText,
                        controller: zip,
                        hintText: 'Zip Code',
                        subtitle: 'ZIP',
                        key: const Key('zip'),
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextBox(
                padding: textBoxPadding,
                controller: phone,
                hintText: 'Phone',
                subtitle: 'Phone',
                key: const Key('phone'),
              ),
              CustomTextBox(
                padding: textBoxPadding,
                controller: email2,
                hintText: 'Email (if changed)',
                subtitle: 'Email',
                key: const Key('email1'),
              ),
              TextButton(
                  key: const Key('submit_button'),
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
