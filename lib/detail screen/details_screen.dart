import 'package:course_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:course_app/models/detail.dart';
import 'components/body2.dart';

class DetailsScreen extends StatelessWidget {
  final Detail detail;

  DetailsScreen({required this.detail});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor1,
      appBar: buildAppBar(context),
      body: Body2(detail: detail),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kColor1,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back),
      ),
      title: Align(
        alignment: Alignment.center,
        child: Text(
          'Details',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/heart.png',
            height: 25,
            width: 25,
            color: Colors.white,
          ),
        ),
        SizedBox(width: kDefaultPadding - 8),
      ],
    );
  }
}
