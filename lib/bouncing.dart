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

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => animateBall());
  }

  void animateBall() {
    setState(() {
      // Update ball position
      ballPositionX += ballSpeedX;
      ballPositionY += ballSpeedY;

      // Check for collision with screen edges
      if (ballPositionX <= 0 ||
          ballPositionX >= MediaQuery.of(context).size.width - ballSize) {
        ballSpeedX *= -1;
      }
      if (ballPositionY <= 0 ||
          ballPositionY >= MediaQuery.of(context).size.height - ballSize) {
        ballSpeedY *= -1;
      }
    });

    // Call this function again after a short delay
    Future.delayed(const Duration(milliseconds: 10), () {
      animateBall();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bouncing Ball'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            ballSpeedX *= -1;
            ballSpeedY *= -1;
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
                left: ballPositionX,
                top: ballPositionY,
                child: Container(
                  width: ballSize,
                  height: ballSize,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ballPositionX = 50.0;
            ballPositionY = 50.0;
            ballSpeedX = 2.0;
            ballSpeedY = 2.0;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
