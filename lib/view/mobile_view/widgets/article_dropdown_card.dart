import 'package:flutter/material.dart';

class ArticleDropDownCard extends StatelessWidget {
  const ArticleDropDownCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 70,
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
