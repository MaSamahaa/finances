import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF69AEA9), Color(0xFF3F8782)],
          ),
        ),
        child: const Text(
          'Finance',
          style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
              color: Color(0xFFFFFFFF)),
        ),
      ),
    );
  }
}
