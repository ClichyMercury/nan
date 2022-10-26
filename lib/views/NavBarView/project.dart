import 'package:flutter/material.dart';
import 'package:nan/utils/projectview.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({super.key});

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
      child: Column(
        children: [
          ProjectCard(
              icon: Icons.close,
              dataIcon: "closed",
              iconColor: Colors.red,
              dataIconColor: Colors.red,
              projectName: "Santé"),
          SizedBox(height: 25),
          ProjectCard(
              icon: Icons.check,
              dataIcon: "in prgress",
              iconColor: Colors.green,
              dataIconColor: Colors.green,
              projectName: "Immobillier")
        ],
      ),
    );
  }
}
