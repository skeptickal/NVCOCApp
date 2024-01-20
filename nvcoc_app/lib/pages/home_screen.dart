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
    return BlocBuilder<MessageCubit, MessageState>(
      builder: (context, state) {
        Container messager = Container(
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
        return Scaffold(
            bottomNavigationBar: const BottomNavBar(),
            backgroundColor: white,
            appBar: const NovaAppBar(),
            body: ListView(
              key: const Key('home_screen_list'),
              children: [
                messager,
                const HomeNavCard(image: 'connect.png', route: '/housechurches', key: Key('connect')),
                const HomeNavCard(image: 'events.png', route: '/calendar', key: Key('events')),
                const HomeNavCard(image: 'learn.png', route: '/learn', key: Key('learn')),
                const HomeNavCard(image: 'beliefs.png', route: '/beliefs', key: Key('beliefs')),
                const HomeNavCard(image: 'missions.png', route: '/missions', key: Key('missions')),
                const HomeNavCard(image: 'give.png', route: '/give', key: Key('give')),
              ],
            ));
      },
    );
  }
}
