import 'package:flutter/material.dart';

class ControlledAnimationsScreen extends StatefulWidget {
  const ControlledAnimationsScreen({Key? key}) : super(key: key);

  static String routeName = '/controlled';

  @override
  _ControlledAnimationsScreenState createState() =>
      _ControlledAnimationsScreenState();
}

class _ControlledAnimationsScreenState
    extends State<ControlledAnimationsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Controlled Animations'),
        ),
      ),
    );
  }
}
