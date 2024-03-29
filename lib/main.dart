import 'package:flutter/material.dart';
import 'package:koolmind_task_app/screens/home_screen.dart';
import 'package:koolmind_task_app/screens/main_screen.dart';
import 'package:koolmind_task_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SplashScreen(),
      routes: {
        MainScreen.routName:(context) => const MainScreen(),
      },
    );
  }
}

