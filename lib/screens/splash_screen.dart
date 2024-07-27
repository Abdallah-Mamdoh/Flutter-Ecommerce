import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
          image: AssetImage("assets/images/1.jpeg"))
        ),
      )
    );
  }
}
