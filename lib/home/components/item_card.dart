import 'package:course_app/models/detail.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';

class ItemCard extends StatelessWidget {
  final Detail detail;
  final VoidCallback press;

  ItemCard({required this.detail, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [kColor2.withOpacity(0.2), kColor1.withOpacity(0.1)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      kDefaultPadding,
                      kDefaultPadding - 12,
                      kDefaultPadding,
                      kDefaultPadding,
                    ),
                    child: Hero(
                        tag: '${detail.id}',
                        child: Image.asset(detail.titleImage)),
                  ),
                  Text(
                    detail.title,
                    style: TextStyle(
                      fontSize: kDefaultPadding - 2,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '\$${detail.price}/month',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(height: 6),
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
                        '${detail.rate}',
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
          ),
        ],
      ),
    );
  }
}
