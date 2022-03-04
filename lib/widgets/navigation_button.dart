import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String title;
  final String screenRoute;
  const NavigationButton(
      {required this.title, required this.screenRoute, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: const Size(200.0, 50.0)),
        onPressed: () => Navigator.pushNamed(context, screenRoute),
        child: Text(title));
  }
}
