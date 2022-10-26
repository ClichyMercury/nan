import 'package:flutter/material.dart';
import '../../utils/constant.dart';

class MyPresences extends StatelessWidget {
  const MyPresences({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: nancolor,
        elevation: 0,
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              "assets/images/logo-k.png",
              width: 110,
              height: 110,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
      body: Container(
          color: nancolor,
          child: const Center(
            child: Text(
              "My Presences",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
