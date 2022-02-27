import 'package:course_app/theme.dart';
import 'package:flutter/material.dart';
import 'components/cards.dart';
import 'components/discount.dart';
import 'components/find_your_course.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor1,
      body: SafeArea(
        child: Column(
          children: [
            FindYourCourse(),
            Discount(),
            Cards(),
          ],
        ),
      ),
    );
  }
}
