import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget Experience(
    {required String company,
    String? position,
    String? duration,
    String? tasks}) {
  return ListTile(
    leading: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Icon(
        FontAwesomeIcons.solidCircle,
        size: 8.0,
        color: Colors.black54,
      ),
    ),
    title: Text(
      company,
      style: TextStyle(
          fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
    ),
    subtitle: Text(
        style: TextStyle(fontSize: 15, color: Colors.black),
        "$duration | $position  $tasks"),
  );
}
