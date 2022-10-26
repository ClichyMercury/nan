import 'package:flutter/material.dart';
import 'package:nan/utils/constant.dart';
import 'package:nan/views/NavBarView/courses.dart';
import 'package:nan/views/NavBarView/dashboard.dart';
import 'package:nan/views/NavBarView/project.dart';
import 'package:nan/views/NavBarView/quiz.dart';
import 'package:nan/utils/drawer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

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
            bottomNavigationBar: SalomonBottomBar(
              selectedItemColor: nangreen,
              unselectedItemColor: nanpurple,
              currentIndex: _currentIndex,
              onTap: (i) => setState(() => _currentIndex = i),
              items: [
                /// Home
                SalomonBottomBarItem(
                  icon: Icon(Icons.home),
                  title: Text("Home"),
                ),

                /// Courses
                SalomonBottomBarItem(
                  icon: Icon(Icons.feed),
                  title: Text("Courses"),
                ),

                /// Quiz
                SalomonBottomBarItem(
                  icon: Icon(Icons.quiz),
                  title: Text("Quiz"),
                ),

                /// Projects
                SalomonBottomBarItem(
                  icon: Icon(Icons.view_compact_alt_outlined),
                  title: Text("Projects"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
