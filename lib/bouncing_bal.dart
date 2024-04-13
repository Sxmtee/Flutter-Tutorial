import 'package:flutter/material.dart';

class BallBouncing extends StatefulWidget {
  const BallBouncing({super.key});

  @override
  State<BallBouncing> createState() => _BallBouncingState();
}

class _BallBouncingState extends State<BallBouncing> {
  double ballPositionY = 50.0;
  double ballPositionX = 50.0;
  double ballSpeedY = 2.0;
  double ballSpeedX = 2.0;
  double ballSize = 50.0;

  void animateBall() {
    setState(() {
      //let's change the direction of the ball
      ballPositionY += ballSpeedY;
      ballPositionX += ballSpeedX;

      //check for collision with screen edges
      if (ballPositionX <= 0 ||
          ballPositionX >= MediaQuery.of(context).size.width - ballSize) {
        ballSpeedX *= -1;
      }
      if (ballPositionY <= 0 ||
          ballPositionY >= MediaQuery.of(context).size.height - ballSize) {
        ballSpeedY *= -1;
      }

      //continue the animation loop
      Future.delayed(const Duration(milliseconds: 10), () {
        animateBall();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
