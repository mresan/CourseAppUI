import 'package:flutter/material.dart';
import '../../theme.dart';

class Discount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          Container(
            height: 180,
            width: size.width,
            decoration: BoxDecoration(
              color: kColor2,
              borderRadius: BorderRadius.circular(kDefaultPadding),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                kDefaultPadding,
                kDefaultPadding,
                kDefaultPadding - 15,
                kDefaultPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '60% off\n',
                              style: TextStyle(
                                fontFamily: 'Varela Round',
                                fontWeight: FontWeight.w700,
                                fontSize: kDefaultPadding * 2,
                                color: kColor1,
                              ),
                            ),
                            TextSpan(
                              text: 'Feb 27 - Mar 27',
                              style: TextStyle(
                                fontFamily: 'Varela Round',
                                fontSize: kDefaultPadding - 5,
                                fontWeight: FontWeight.w400,
                                color: kColor1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: kColor1,
                        onPressed: () {},
                        child: Text(
                          'Join Course',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/school-bag.png',
                    height: 160,
                    width: 160,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subject',
                style: TextStyle(
                  fontSize: kDefaultPadding,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Text(
                'see all',
                style: TextStyle(
                  fontSize: kDefaultPadding - 5,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
