import 'package:flutter/material.dart';
import 'package:nan/utils/constant.dart';

import '../SpalshScreen.dart';

class ShowConnexion extends StatefulWidget {
  const ShowConnexion({Key? key}) : super(key: key);

  @override
  _ShowConnexionState createState() => _ShowConnexionState();
}

class _ShowConnexionState extends State<ShowConnexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nancolor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.transparent,
              child: Image.asset(
                "assets/images/logo-k.png",
                height: 250,
                width: 250,
              ),
            ),
            const SizedBox(height: 25),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: nancolor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: ' Welcome NaNien',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    showConnexiontext,
                    textAlign: TextAlign.center,
                    style: textnan,
                  ),
                  const SizedBox(height: 25),
                  Text(
                    "Sign in to your Google account and click enter",
                    style: textnan,
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: (() {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const SplashScreen()));
                    }),
                    child: Container(
                      height: 70.0,
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                        color: nanpurple,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Connect with ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            'assets/images/google.png',
                            height: 60.0,
                            width: 60.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
