import 'package:flutter/material.dart';

import 'package:nan/utils/noteview.dart';

import '../../utils/constant.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    super.key,
  });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nancolor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Sarah ABS",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Flutter Specialist',
                      style: TextStyle(
                          color: nanyellow,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'you have paid your scolarity',
                      style: TextStyle(
                          color: nangreen,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 15),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'you have a meet today',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PointView(
                          context: context,
                          homeText: "Courses Points",
                          descText: "77.05",
                          descColor: Colors.white,
                        ),
                        const SizedBox(width: 15),
                        PointView(
                          context: context,
                          homeText: "Projects Points",
                          descText: "7.5",
                          descColor: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PointView(
                          context: context,
                          homeText: 'Discovery points',
                          descText: '2.00',
                          descColor: Colors.white,
                        ),
                        const SizedBox(width: 15),
                        PointView(
                          context: context,
                          homeText: 'Rating',
                          descText: '4',
                          descColor: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(height: 15),
                    PointView(
                        descColor: nangreen,
                        context: context,
                        homeText: "Total points",
                        descText: "0")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
