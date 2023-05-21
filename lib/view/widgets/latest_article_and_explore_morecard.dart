import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class LatestArticleExploreMoreCard extends StatelessWidget {
  const LatestArticleExploreMoreCard({
    super.key,
    this.cardHeading,
    this.itemsCount = 0,
    this.width =double.infinity,
  });

  final String? cardHeading;
  final int itemsCount;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
      ),
      padding: const EdgeInsets.all(AppConstants.largePadding),
      child: Column(
        children: [
          Text(
            cardHeading ?? "Articles",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const Divider(
            thickness: 1,
          ),
          Column(
            children: List.generate(
              itemsCount,
              (index) => Column(
                children: [
                  Text(
                    "of course, there's the flip side of that where vice versaa hen, of hen, of course, there's the flip side of that where vice versa course, there's the flip side of that where vice versahen, of course, there's the flip side of that where vice versa?",
                    style: Theme.of(context).textTheme.bodyLarge,
                    maxLines: 2,
                  ),
                  const Divider(
                    thickness: 0.5,
                    color: Colors.grey,
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
