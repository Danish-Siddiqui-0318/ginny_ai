import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ginny_ai/home_page.dart';
import 'package:ginny_ai/pallete.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ginny AI',
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Pallete.whiteColor,
        appBarTheme: const AppBarTheme(backgroundColor: Pallete.whiteColor),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
