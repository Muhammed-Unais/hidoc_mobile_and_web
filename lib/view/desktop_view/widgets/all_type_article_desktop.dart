import 'package:flutter/material.dart';
import 'package:hidoc_app/model/article_model.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/res/widgets/elevated_button.dart';
import 'package:hidoc_app/view/widgets/latest_article_and_explore_morecard.dart';
import 'package:hidoc_app/view/widgets/trending_articles_.dart';

class AllTypeArticlesDesktop extends StatelessWidget {
  const AllTypeArticlesDesktop(
      {super.key,
      this.latestArticle,
      this.trendingtArticle,
      this.latestOrexploreArticle});

  final List<Article>? latestArticle;
  final List<Article>? trendingtArticle;
  final List<Article>? latestOrexploreArticle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: LatestArticleExploreMoreCard(
              latestOrexploreArticle: latestArticle,
              itemsCount: 5,
              cardHeading: "Latest Article",
            ),
          ),
          const SizedBox(width: AppConstants.mediumMargin),
          Flexible(
            child: TrendingArticles(
              fullImageUrl: trendingtArticle?[0].articleImg,
              smallArticleDiscription: trendingtArticle?[0].articleDescription,
              smallArticleTitle: trendingtArticle?[0].articleTitle,
              trendingArticleTitle: trendingtArticle?[0].articleTitle,
              smallImageUrl: trendingtArticle?[0].articleImg,
            ),
          ),
          const SizedBox(width: AppConstants.mediumMargin),
          Flexible(
            child: Column(
              children: [
                LatestArticleExploreMoreCard(
                  latestOrexploreArticle: latestOrexploreArticle,
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
