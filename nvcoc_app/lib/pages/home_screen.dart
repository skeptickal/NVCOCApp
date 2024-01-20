import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nvcoc_app/cubits/message_cubit/message_cubit.dart';
import 'package:nvcoc_app/resources/bottom_nav_bar.dart';
import 'package:nvcoc_app/resources/constants.dart';
import 'package:nvcoc_app/resources/nova_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<MessageCubit>().getMessage();
    return Scaffold(
        bottomNavigationBar: const BottomNavBar(),
        backgroundColor: white,
        appBar: const NovaAppBar(),
        body: ListView(
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
