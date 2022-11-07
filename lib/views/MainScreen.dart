import 'package:flutter/material.dart';
import 'package:nan/utils/constant.dart';
import 'package:nan/views/NavBarView/courses.dart';
import 'package:nan/views/NavBarView/dashboard.dart';
import 'package:nan/views/NavBarView/project.dart';
import 'package:nan/views/NavBarView/quiz.dart';
import 'package:nan/utils/drawer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../utils/NavBar/navigation_bar_item.dart';
import '../utils/svg_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  final urlImage =
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';
  int _currentIndex = 0;

  final screens = [
    Dashboard(),
    CoursesView(),
    QuizView(),
    ProjectView(),
  ];

  void _setIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nancolor,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            backgroundColor: nancolor,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(urlImage),
                  ),
                ),
              ],
            ),
            drawer: NavigationDrawerWidget(),
            body: IndexedStack(
              index: _currentIndex,
              children: screens,
            ),
            bottomNavigationBar: Container(
              height: 50,
              color: const Color.fromRGBO(26, 28, 52, 1),
              // padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NavigationBarItem(
                    icon: SvgIcons.homeAlt,
                    text: 'Home',
                    changeIndex: _setIndex,
                    index: 0,
                    currentIndex: _currentIndex,
                  ),
                  NavigationBarItem(
                    icon: SvgIcons.course,
                    text: 'Courses',
                    changeIndex: _setIndex,
                    index: 1,
                    currentIndex: _currentIndex,
                  ),
                  NavigationBarItem(
                    icon: SvgIcons.thinking,
                    text: 'Quizs',
                    changeIndex: _setIndex,
                    index: 2,
                    currentIndex: _currentIndex,
                  ),
                  NavigationBarItem(
                    icon: SvgIcons.project,
                    text: 'Projects',
                    index: 3,
                    currentIndex: _currentIndex,
                    changeIndex: _setIndex,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
