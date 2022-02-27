import 'package:course_app/detail%20screen/components/subtitle_1.dart';
import 'package:course_app/detail%20screen/components/unlock_course.dart';
import 'package:course_app/models/detail.dart';
import 'package:flutter/material.dart';
import 'subtitle_2.dart';
import 'title_fee.dart';
import 'title_logo.dart';

class Body2 extends StatelessWidget {
  final Detail detail;

  Body2({required this.detail});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleFee(detail: detail),
        TitleLogo(detail: detail),
        Subtitle1(detail: detail),
        Subtitle2(detail: detail),
        UnlockCourse(),
      ],
    );
  }
}
