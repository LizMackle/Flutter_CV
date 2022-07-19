import 'package:flutter/material.dart';

Widget CVTitle(String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title.toUpperCase(),
          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
        ),
        Divider(
          color: Colors.black54,
        ),
      ],
    ),
  );
}
