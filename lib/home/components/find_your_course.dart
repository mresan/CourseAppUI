import 'package:flutter/material.dart';
import '../../theme.dart';

class FindYourCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        kDefaultPadding,
        kDefaultPadding,
        kDefaultPadding,
        kDefaultPadding - 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome, mr.esan!',
                style: TextStyle(
                  fontSize: kDefaultPadding - 5,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              SizedBox(height: 2),
              Text(
                'Find your course',
                style: TextStyle(
                  fontSize: kDefaultPadding,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            height: kDefaultPadding * 2 + 5,
            width: kDefaultPadding * 2 + 5,
            decoration: BoxDecoration(
              color: kColor3,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'assets/images/search.png',
                color: kColor1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
