import 'package:animations/screens/implicit_animations/challenge_of_the_fluctuant_button_screen.dart';
import 'package:animations/screens/implicit_animations/my_scroll_view_screen.dart';
import 'package:animations/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class ImplicitAnimationsScreen extends StatelessWidget {
  const ImplicitAnimationsScreen({Key? key}) : super(key: key);

  static String routeName = '/implicit';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Implicit Animations'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NavigationButton(
                  title: 'Challenge of the Fluctuant Button',
                  screenRoute: ChallengeOfTheFluctuantButton.routeName),
              const SizedBox(
                height: 20.0,
              ),
              NavigationButton(
                  title: 'MyScrollView', screenRoute: MyScrollView.routeName)
            ],
          ),
        ),
      ),
    );
  }
}
