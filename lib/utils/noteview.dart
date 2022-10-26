import 'package:flutter/material.dart';

class PointView extends StatelessWidget {
  final BuildContext context;
  final String homeText;
  final String descText;
  final Color? homeColor;
  final Color descColor;
  final Color? iconColor;
  final Color? borderColor;
  final double? iconSize;
  final IconData? icon;
  final Widget? route;
  final double? width;
  final double? height;
  const PointView({
    Key? key,
    this.route,
    required this.descColor,
    this.homeColor,
    this.iconColor,
    this.width,
    this.height,
    this.borderColor,
    this.iconSize,
    required this.context,
    required this.homeText,
    required this.descText,
    this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: Color.fromARGB(255, 63, 64, 80),
          border: Border.all(color: Colors.transparent)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          SizedBox(
            height: 10,
          ),
          Text(
            homeText,
            style: TextStyle(color: Colors.white38, fontSize: 12),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            descText,
            style: TextStyle(color: descColor, fontSize: 40),
          ),
        ],
      ),
    );
  }
}
