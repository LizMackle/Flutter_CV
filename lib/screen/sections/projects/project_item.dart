import 'package:flutter/material.dart';
import '../../../model/project.dart';

class ProjectItem extends StatelessWidget {
  final Project project;
  ProjectItem(this.project);

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.bottomCenter,
      height: project.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 7),
          ),
        ],
        border: Border.all(color: Colors.black54, width: 2),
        image: DecorationImage(
            image: AssetImage(project.imageUrl), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          // children: [
          //   Text(
          //     project.title,
          //     style: TextStyle(fontSize: 16),
          //   )
          // ],
        ),
      ),
    );
  }
}
