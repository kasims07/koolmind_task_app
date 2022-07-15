import 'package:flutter/material.dart';
import 'package:koolmind_task_app/screens/home_screen.dart';

const homeScreenItems = [
  HomeScreen(),
  Center(child: Text('Profile')),
  Center(child: Text('Offers')),
  Center(child: Text('More')),
];


showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}