import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/view/mobile_view/widgets/article_card_.dart';
import 'package:hidoc_app/view/widgets/article_dropdown_card.dart';
import 'package:hidoc_app/view/widgets/hidoc_bulletin_content.dart';
import 'package:hidoc_app/view/widgets/latest_article_and_explore_morecard.dart';
import 'package:hidoc_app/view/mobile_view/widgets/news_card.dart';
import 'package:hidoc_app/view/widgets/quizzes_and_medical_card.dart';
import 'package:hidoc_app/view/widgets/screen_elaveted_buttons.dart';
import 'package:hidoc_app/view/mobile_view/widgets/special_future_card.dart';
import 'package:hidoc_app/view/mobile_view/widgets/top_app_bar.dart';
import 'package:hidoc_app/view/mobile_view/widgets/top_paint.dart';
import 'package:hidoc_app/view/widgets/trending_articles_.dart';
import 'package:hidoc_app/view/widgets/trending_hidoc_bulletin.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Top left paint
          Positioned(
            top: 0,
            left: 0,
            child: CustomPaint(
              size: Size(size.width * 0.45, size.height * 0.25),
              painter: RPSCustomPainter(),
            ),
          ),
          // top app bar
          Positioned(
            top: size.height * 0.08,
            left: 20,
            right: 20,
            child: const TopAppBar(),
          ),
          // body
          Positioned(
            top: size.height * 0.2,
            left: 20,
            right: 20,
            bottom: 0,
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Article Contect Drop Down
                   ArticleDropDownCard(width: size.width,hieght: 70,),
                  const SizedBox(height: AppConstants.mediumMargin),
                  // Articles Card
                  const ArticlesCard(),
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
                      10,
                      (index) =>  HiDocBulletinContent(index: index),
                    ),
                  ),
                  const TrendingHidocBulletin(),
                  ScreenElavatedButtons(
                    text: "Read More Bulletin",
                    buttonAction: () {},
                  ),
                  const LatestArticleExploreMoreCard(
                    cardHeading: "Latest Articles",
                    itemsCount: 5,
                  ),
                  const SizedBox(height: AppConstants.mediumMargin),
                  const TrendingArticles(),
                  const SizedBox(height: AppConstants.mediumMargin),
                  const LatestArticleExploreMoreCard(
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
                  const NewsCard(),
                  const SizedBox(height: AppConstants.largeMargin),  
                  const QuizessAndMedicalCard(width: double.infinity),
                  const SizedBox(height: AppConstants.largeMargin),  
                  const SpecialFutureCard(),
                  const SizedBox(height: AppConstants.largeMargin),    
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
