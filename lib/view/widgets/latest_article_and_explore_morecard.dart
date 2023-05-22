import 'package:flutter/material.dart';
import 'package:hidoc_app/model/article_model.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class LatestArticleExploreMoreCard extends StatelessWidget {
  const LatestArticleExploreMoreCard({
    super.key,
    this.cardHeading,
    this.itemsCount = 0,
    this.width =double.infinity, this.latestOrexploreArticle,
  });

  final String? cardHeading;
  final int itemsCount;
  final double width;
  final List<Article>? latestOrexploreArticle;


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
              latestOrexploreArticle?.length ?? 0,
              (index) => Column(
                children: [
                  Text(
                    latestOrexploreArticle?[index].articleDescription ??"",
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
