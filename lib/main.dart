import 'package:flutter/material.dart';
import 'package:uiexam/home_screen.dart';
import 'package:uiexam/secandhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SecondScreen.routeName,
      routes: {
        HomeScreen.routeName:(context)=>const HomeScreen(),
        SecondScreen.routeName:(context)=>const SecondScreen(),
      },
    );
  }
}
