import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/res/widgets/elevated_button.dart';
import 'package:hidoc_app/view/widgets/latest_article_and_explore_morecard.dart';
import 'package:hidoc_app/view/widgets/trending_articles_.dart';

class AllTypeArticlesDesktop extends StatelessWidget {
  const AllTypeArticlesDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Flexible(
            child: LatestArticleExploreMoreCard(
              itemsCount: 5,
              cardHeading: "Latest Article",
            ),
          ),
          const SizedBox(width: AppConstants.mediumMargin),
          const Flexible(
            child: TrendingArticles(),
          ),
          const SizedBox(width: AppConstants.mediumMargin),
          Flexible(
            child: Column(
              children: [
                const LatestArticleExploreMoreCard(
                  itemsCount: 2,
                  cardHeading: "Explore more in Articles",
                ),
                const SizedBox(height: AppConstants.largeMargin),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButtons(
                    buttonAction: () {},
                    color: Theme.of(context).primaryColor,
                    text: "Explore Hidoc Dr.",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
