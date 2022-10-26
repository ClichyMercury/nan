import 'package:flutter/material.dart';
import 'package:nan/utils/constant.dart';

class ProjectCard extends StatelessWidget {
  final IconData icon;
  final String dataIcon;
  final Color iconColor;
  final Color dataIconColor;
  final String projectName;
  const ProjectCard({
    super.key,
    required this.icon,
    required this.dataIcon,
    required this.iconColor,
    required this.dataIconColor,
    required this.projectName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: contColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                dataIcon,
                style: TextStyle(color: dataIconColor),
              )
            ],
          ),
          Text(projectName,
              style: TextStyle(color: Colors.black, fontSize: 20)),
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
    );
  }
}
