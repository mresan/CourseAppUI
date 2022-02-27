import 'package:course_app/models/detail.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class Subtitle2 extends StatelessWidget {
  final Detail detail;

  Subtitle2({required this.detail});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        kDefaultPadding,
        kDefaultPadding - 10,
        kDefaultPadding,
        0,
      ),
      child: Container(
        height: 90,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kColor2.withOpacity(0.2), kColor1.withOpacity(0.1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                kDefaultPadding,
                kDefaultPadding,
                0,
                kDefaultPadding,
              ),
              child: Image.asset(detail.subTitleImage2),
            ),
            Padding(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detail.subTitle2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: kDefaultPadding - 2,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/timer.png',
                        height: kDefaultPadding,
                        width: kDefaultPadding,
                      ),
                      SizedBox(width: 2),
                      Text(
                        '${detail.time} mins',
                        style: TextStyle(
                          fontSize: kDefaultPadding - 8,
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: kDefaultPadding,
                bottom: kDefaultPadding,
                right: kDefaultPadding - 10,
              ),
              child: Container(
                height: kDefaultPadding * 3,
                width: kDefaultPadding * 3,
                decoration: BoxDecoration(
                  color: kColor3,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: EdgeInsets.all(kDefaultPadding - 5),
                  child: Image.asset(
                    'assets/images/play.png',
                    color: kColor1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
