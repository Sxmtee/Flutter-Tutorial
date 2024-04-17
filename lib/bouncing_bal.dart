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

  double paddlePositionX = 0.0;
  double paddleWidth = 100.0;
  double paddleHeight = 20.0;

  void animateBall() {
    setState(() {
      // Update ball position
      ballPositionY += ballSpeedY;
      ballPositionX += ballSpeedX;

      // Check for collision with screen edges
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
      }

      // Collision detection with paddle
      if (ballPositionY + ballSize >=
              MediaQuery.of(context).size.height - paddleHeight &&
          ballPositionX >= paddlePositionX &&
          ballPositionX <= paddlePositionX + paddleWidth) {
        // Calculate the region where the collision should be detected
        double paddleTopRegion =
            MediaQuery.of(context).size.height - paddleHeight - ballSize;

        // Check if the ball hits the top region of the paddle
        if (ballPositionY <= paddleTopRegion) {
          ballSpeedY *= -1;
        } else {
          // Ball hits the bottom region of the paddle, reverse X direction
          ballSpeedX *= -1;
        }
      }

      // Continue the animation loop
      Future.delayed(const Duration(milliseconds: 10), () {
        animateBall();
      });
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => animateBall());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bouncing Ball"),
        backgroundColor: Colors.blue,
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
            ),
          ],
        ),
      ),
    );
  }
}
