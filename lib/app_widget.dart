import 'package:animations/screens/controlled_animations/controlled_aniamtions_screen.dart';
import 'package:animations/screens/home_screen.dart';
import 'package:animations/screens/implicit_animations/challenge_of_the_fluctuant_button_screen.dart';
import 'package:animations/screens/implicit_animations/implicit_aniamtions_screen.dart';
import 'package:animations/screens/implicit_animations/my_scroll_view_screen.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ImplicitAnimationsScreen.routeName: (context) =>
            const ImplicitAnimationsScreen(),
        ControlledAnimationsScreen.routeName: (context) =>
            const ControlledAnimationsScreen(),
        ChallengeOfTheFluctuantButton.routeName: (context) =>
            const ChallengeOfTheFluctuantButton(),
        MyScrollView.routeName: (context) => const MyScrollView(),
      },
    );
  }
}
