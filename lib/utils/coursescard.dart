import 'package:flutter/material.dart';
import 'package:nan/utils/constant.dart';

class CoursesCard extends StatelessWidget {
  final String data;
  const CoursesCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: contColor,
      padding: const EdgeInsets.all(20),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/icons/book.png",
            height: 30,
            width: 30,
          ),
          Text(
            data,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
