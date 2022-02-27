import 'package:course_app/models/detail.dart';
import 'package:flutter/material.dart';
import '../../theme.dart';
import 'item_card.dart';
import 'package:course_app/detail screen/details_screen.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: GridView.builder(
          itemCount: details.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPadding - 8,
            crossAxisSpacing: kDefaultPadding,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => ItemCard(
            detail: details[index],
            press: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  detail: details[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
