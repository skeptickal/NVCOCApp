import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/constants/screen_wrapper.dart';
import 'package:nvcoc_app/cubits/message_cubit/message_cubit.dart';

import '../constants/colors.dart';
import '../constants/connect_with_us_widgets.dart';
import '../constants/text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MessageCubit>().getMessage();
    return ScreenWrapper(
        child: RefreshIndicator(
      color: novaBlue,
      backgroundColor: white,
      onRefresh: () => context.read<MessageCubit>().getMessage(),
      child: ListView(
        key: const Key('home_screen_list'),
        children: const [
          _BannerMessage(),
          HomeNavCard(image: 'connect.png', route: '/housechurches', key: Key('connect')),
          HomeNavCard(image: 'events.png', route: '/calendar', key: Key('events')),
          HomeNavCard(image: 'learn.png', route: '/learn', key: Key('learn')),
          HomeNavCard(image: 'beliefs.png', route: '/beliefs', key: Key('beliefs')),
          HomeNavCard(image: 'missions.png', route: '/missions', key: Key('missions')),
          HomeNavCard(image: 'give.png', route: '/give', key: Key('give')),
        ],
      ),
    ));
  }
}

class _BannerMessage extends StatelessWidget {
  const _BannerMessage();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageCubit, MessageState>(
      builder: (context, state) {
        if (state.message == null) {
          return const SizedBox();
        }
        return Container(
          color: novaYellow,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Column(
              children: [
                Text(
                  state.message!.messageTitle,
                  style: montserrat.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  state.message!.message,
                  style: montserrat.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
