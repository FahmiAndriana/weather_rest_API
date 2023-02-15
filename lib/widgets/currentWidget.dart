import 'package:flutter/material.dart';

Widget currentWidget(IconData icon, String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.orange,
          size: 64,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$temp°",
          style: TextStyle(fontSize: 50, color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$location",
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[300],
          ),
        )
      ],
    ),
  );
}
