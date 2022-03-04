import 'package:animations/screens/controlled_animations/controlled_aniamtions_screen.dart';
import 'package:animations/screens/implicit_animations/implicit_aniamtions_screen.dart';
import 'package:animations/widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NavigationButton(
                title: 'Implicit Animations',
                screenRoute: ImplicitAnimationsScreen.routeName),
            const SizedBox(
              height: 20.0,
            ),
            NavigationButton(
                title: 'Controlled Animations',
                screenRoute: ControlledAnimationsScreen.routeName)
          ],
        ),
      ),
    );
  }
}
