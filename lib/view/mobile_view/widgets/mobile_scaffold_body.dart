import 'package:flutter/material.dart';
import 'package:hidoc_app/data/response/status.dart';
import 'package:hidoc_app/model/article_model.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/view/mobile_view/widgets/article_card_.dart';
import 'package:hidoc_app/view/mobile_view/widgets/news_card.dart';
import 'package:hidoc_app/view/mobile_view/widgets/special_future_card.dart';
import 'package:hidoc_app/view/widgets/article_dropdown_card.dart';
import 'package:hidoc_app/view/widgets/hidoc_bulletin_content.dart';
import 'package:hidoc_app/view/widgets/latest_article_and_explore_morecard.dart';
import 'package:hidoc_app/view/widgets/quizzes_and_medical_card.dart';
import 'package:hidoc_app/view/widgets/screen_elaveted_buttons.dart';
import 'package:hidoc_app/view/widgets/trending_articles_.dart';
import 'package:hidoc_app/view/widgets/trending_hidoc_bulletin.dart';
import 'package:hidoc_app/view_model/articles_view_model.dart';
import 'package:provider/provider.dart';

class MobileScaffoldBody extends StatelessWidget {
  const MobileScaffoldBody({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Consumer<ArticlesViewModel>(
      builder: (context, value, _) {
        switch (value.apiResponse.status) {
          case Status.loading:
            return const Align(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            );
          case Status.error:
            return Text(value.apiResponse.message.toString());
          case Status.loaded:
            Article? articledata = value.apiResponse.data?.data?.article;
            final List<Article>? trendingArticleData =
                value.apiResponse.data?.data?.trandingArticle;
            final List<Article>? exploreArticleData =
                value.apiResponse.data?.data?.exploreArticle;
            final newsData = value.apiResponse.data?.data?.news;
            final List<Article>? bulletin =
                value.apiResponse.data?.data?.bulletin;
            return Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Article Contect Drop Down
                ArticleDropDownCard(
                  width: size.width,
                  hieght: 70,
                ),
                const SizedBox(height: AppConstants.mediumMargin),
                // Articles Card
                ArticlesCard(
                  imageUrl: articledata?.articleImg,
                  articleDiscrption: articledata?.articleDescription,
                  articleTitle: articledata?.articleTitle,
                  rewardPoints: articledata?.rewardPoints.toString(),
                ),
                const SizedBox(height: AppConstants.mediumMargin),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hidoc Bulletin",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                const SizedBox(height: AppConstants.largeMargin),
                // HiDocButtletinContect
                Column(
                  children: List<Widget>.generate(
                    bulletin?.length ?? 0,
                    (index) => HiDocBulletinContent(
                      index: index,
                      description: bulletin?[index].articleDescription,
                      title: bulletin?[index].articleTitle,
                    ),
                  ),
                ),
                // Trending bullet
                TrendingHidocBulletin(
                  trandingBulletin:
                      value.apiResponse.data?.data?.trandingBulletin,
                ),
                ScreenElavatedButtons(
                  text: "Read More Bulletin",
                  buttonAction: () {},
                ),
                LatestArticleExploreMoreCard(
                  latestOrexploreArticle:
                      value.apiResponse.data?.data?.latestArticle,
                  cardHeading: "Latest Articles",
                  itemsCount: 5,
                ),
                const SizedBox(height: AppConstants.mediumMargin),
                Column(
                    children: List.generate(
                  trendingArticleData?.length ?? 0,
                  (index) => TrendingArticles(
                    fullImageUrl: trendingArticleData?[index].articleImg,
                    trendingArticleTitle:
                        trendingArticleData?[index].articleTitle,
                    smallArticleDiscription:
                        trendingArticleData?[index].articleDescription,
                    smallArticleTitle: trendingArticleData?[index].articleTitle,
                    smallImageUrl: trendingArticleData?[index].articleImg,
                  ),
                )),
                const SizedBox(height: AppConstants.mediumMargin),
                LatestArticleExploreMoreCard(
                  latestOrexploreArticle: exploreArticleData,
                  cardHeading: "Explore More In Articles",
                  itemsCount: 2,
                ),
                ScreenElavatedButtons(
                  buttonAction: () {},
                  text: "Explore Hidoc Dr.",
                  marginHorzontal: 0,
                ),
                Text(
                  "What's more on Hidoc Dr.",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: AppConstants.largeMargin),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: newsData?.length ?? 0,
                    itemBuilder: (context, index) {
                      return NewsCard(
                        newsTitle: newsData?[index].title,
                        imageUrl: newsData?[index].urlToImage,
                        newsContent: newsData?[index].description,
                      );
                    }),
                const SizedBox(height: AppConstants.largeMargin),
                const QuizessAndMedicalCard(width: double.infinity),
                const SizedBox(height: AppConstants.largeMargin),
                const SpecialFutureCard(),
                const SizedBox(height: AppConstants.largeMargin),
              ],
            );
          default:
            return const SizedBox();
        }
      },
    );
  }
}
