import 'package:flutter/material.dart';

class ArticleDropDownCard extends StatelessWidget {
  const ArticleDropDownCard({super.key, required this.width, required this.hieght});

  final double width;
  final double hieght;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: hieght,
      child: Card(
        surfaceTintColor: Colors.white,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "Critical Care",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
      ),
    );
  }
}
