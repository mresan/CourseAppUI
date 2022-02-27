import 'package:flutter/material.dart';
import '../../theme.dart';

class UnlockCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        kDefaultPadding,
        kDefaultPadding - 10,
        kDefaultPadding,
        kDefaultPadding,
      ),
      child: Container(
        height: 90,
        width: size.width,
        decoration: BoxDecoration(
          color: kColor2,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(kDefaultPadding - 10),
                      child: Container(
                        height: kDefaultPadding * 3 + 10,
                        width: kDefaultPadding * 3 + 10,
                        decoration: BoxDecoration(
                          color: kColor1,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(kDefaultPadding - 5),
                          child: Image.asset('assets/images/padlock.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultPadding - 15),
                      child: Text(
                        'Unlock Course Now',
                        style: TextStyle(
                          color: kColor1,
                          fontSize: kDefaultPadding - 2,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Opacity(
                          opacity: 0.2,
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Icon(Icons.arrow_forward_ios),
                        ),
                        Opacity(
                          opacity: 0.9,
                          child: Icon(Icons.arrow_forward_ios),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
