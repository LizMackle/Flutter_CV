import 'package:flutter/material.dart';

Widget SkillsRow(image) => Container(
      width: 70,
      height: 100,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(20),
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          Image.asset("assets/skills/$image.jpg"),
          const SizedBox(height: 4),
          Text(
            image.toString().replaceAll('-', ' '),
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
