import 'dart:async';
import 'package:flutter/material.dart';
import 'package:restaurant_app/constrants/my_colors.dart';
import 'package:restaurant_app/constrants/route_string.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacementNamed(getStartedScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              "مرحبا بك في مطعمنا",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
