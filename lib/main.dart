import 'package:flutter/material.dart';
import 'home/home_page.dart';

void main() => runApp(CourseApp());

class CourseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Varela Round'),
      home: HomePage(),
    );
  }
}
