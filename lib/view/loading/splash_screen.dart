import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rika/view/loading/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = true;

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) =>
                isLoading ? const WelcomeScreen() : const WelcomeScreen()),
      );
    });
    super.initState();
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/s1.png'),
        )),
        alignment: Alignment.center,
        child: Image.asset(
          fit: BoxFit.fill,
          'images/logo.png',
          width: 188.03,
          height: 120,
          color: Colors.white,
        ),
      ),
    );
  }
}
