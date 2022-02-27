import 'package:course_app/models/detail.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class TitleLogo extends StatelessWidget {
  final Detail detail;

  TitleLogo({required this.detail});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
            kDefaultPadding,
            0,
            kDefaultPadding,
            kDefaultPadding,
          ),
          child: Hero(
            tag: '${detail.id}',
            child: Image.asset(
              detail.titleImage,
              height: kDefaultPadding * 15,
              width: kDefaultPadding * 15,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Outline',
                style: TextStyle(
                  fontSize: kDefaultPadding,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                'view all',
                style: TextStyle(
                  fontSize: kDefaultPadding - 5,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
