import 'package:flutter/cupertino.dart';
import 'package:nan/utils/coursescard.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({super.key});

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
      child: Column(
        children: [
          CoursesCard(data: 'Intro Courses'),
          SizedBox(height: 15),
          CoursesCard(data: "SEPTEMBER Courses"),
          SizedBox(height: 15),
          CoursesCard(
            data: "OCTOBER courses",
          )
        ],
      ),
    );
  }
}
