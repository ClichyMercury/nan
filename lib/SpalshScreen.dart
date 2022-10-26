import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nan/views/MainScreen.dart';
import '../../utils/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), (() {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const MainScreen()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 41, 53),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo-k.png",
            height: 175,
            width: 175,
          ),
          SizedBox(
            height: 55,
          ),
          CircularProgressIndicator(
            color: nanpurple,
          )
        ],
      )),
    );
  }
}
