import 'package:flutter/material.dart';

class BouncingBallScreen extends StatefulWidget {
  const BouncingBallScreen({super.key});

  @override
  State<BouncingBallScreen> createState() => _BouncingBallScreenState();
}

class _BouncingBallScreenState extends State<BouncingBallScreen> {
  double ballPositionX = 50.0;
  double ballPositionY = 50.0;
  double ballSpeedX = 2.0;
  double ballSpeedY = 2.0;
  double ballSize = 50.0;

  double paddlePositionX = 0.0;
  double paddleWidth = 100.0;
  double paddleHeight = 20.0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => animateBall());
  }

  void animateBall() {
    setState(() {
      //Update ball position
      ballPositionX += ballSpeedX;
      ballPositionY += ballSpeedY;

      //check for collision with screen edges
      if (ballPositionX <= 0 ||
          ballPositionX >= MediaQuery.of(context).size.width - ballSize) {
        ballSpeedX *= -1;
      }
      if (ballPositionY <= 0) {
        ballSpeedY *= -1;
      }
      if (ballPositionY >= MediaQuery.of(context).size.height - ballSize) {
        ballPositionX = 50.0;
        ballPositionY = 50.0;
        ballSpeedX = 2.0;
        ballSpeedY = 2.0;
      }

      // Check for collision with paddle
      if (ballPositionY + ballSize >=
              MediaQuery.of(context).size.height - paddleHeight &&
          ballPositionX + ballSize >= paddlePositionX &&
          ballPositionX <= paddlePositionX + paddleWidth) {
        ballSpeedY *= -1;
      }

      //call this function again after a short delay
      Future.delayed(const Duration(milliseconds: 10), () {
        animateBall();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bouncing Ball'),
      ),
      body: GestureDetector(
        onHorizontalDragUpdate: (details) {
          setState(() {
            paddlePositionX = details.globalPosition.dx - paddleWidth / 2;
            if (paddlePositionX < 0) {
              paddlePositionX = 0;
            } else if (paddlePositionX >
                MediaQuery.of(context).size.width - paddleWidth) {
              paddlePositionX = MediaQuery.of(context).size.width - paddleWidth;
            }
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 50),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Stack(
            children: [
              Positioned(
                top: ballPositionY,
                left: ballPositionX,
                child: Container(
                  height: ballSize,
                  width: ballSize,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: paddlePositionX,
                child: Container(
                  height: paddleHeight,
                  width: paddleWidth,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
