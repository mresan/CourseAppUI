import 'package:course_app/models/detail.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class TitleFee extends StatelessWidget {
  final Detail detail;

  TitleFee({required this.detail});
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
        height: 100,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    detail.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: kDefaultPadding,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/star.png',
                        height: 10,
                        width: 10,
                      ),
                      SizedBox(width: 4),
                      Text(
                        detail.rate.toString(),
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
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, kDefaultPadding, 0),
              child: Container(
                height: kDefaultPadding * 3 + 10,
                width: kDefaultPadding * 3 + 10,
                decoration: BoxDecoration(
                  color: kColor2,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fee',
                        style: TextStyle(
                          color: kColor1,
                        ),
                      ),
                      Text(
                        '\$${detail.price}',
                        style: TextStyle(
                          color: kColor1,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
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
