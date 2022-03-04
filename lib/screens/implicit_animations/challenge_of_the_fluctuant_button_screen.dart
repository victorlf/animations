import 'package:flutter/material.dart';

class ChallengeOfTheFluctuantButton extends StatefulWidget {
  const ChallengeOfTheFluctuantButton({Key? key}) : super(key: key);

  static String routeName = '/challenge_of_the_fluctuant_button';

  @override
  CchallengeOfTheFluctuantButtonState createState() =>
      CchallengeOfTheFluctuantButtonState();
}

class CchallengeOfTheFluctuantButtonState
    extends State<ChallengeOfTheFluctuantButton> {
  bool isSquare = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Challenge of the Fluctuant Button'),
        ),
        body: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(seconds: 1),
              alignment: isSquare ? Alignment.bottomRight : Alignment.topCenter,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSquare = !isSquare;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  margin: const EdgeInsets.all(20.0),
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(isSquare ? 40.0 : 0.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
