import 'package:flutter/material.dart';

class PulsatingCircleAnimation extends StatelessWidget {
  const PulsatingCircleAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pulsating Circle Animation'),
      ),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0,end: 200),
          duration: Duration(milliseconds: 8000),
          builder: (context, value, child) {
            return Container(
            width: value,
            height: value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow.withOpacity(0.9),
                  blurRadius: value,
                  spreadRadius: value / 2,
                ),
                BoxShadow(
                  color: Colors.red.withOpacity(0.7),
                  blurRadius: value,
                  spreadRadius: value / 2,
                ),
              ],
            ),
            child: child,
          );
          },child: Text("Hello Duniya!!"),
        ),
      ),
    );
  }
}
