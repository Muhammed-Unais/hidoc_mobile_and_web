import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/res/widgets/elevated_button.dart';
import 'package:hidoc_app/view/desktop_view/widgets/all_type_article_desktop.dart';
import 'package:hidoc_app/view/desktop_view/widgets/appbar_desktop.dart';
import 'package:hidoc_app/view/desktop_view/widgets/article_desktop_card.dart';
import 'package:hidoc_app/view/desktop_view/widgets/footer.dart';
import 'package:hidoc_app/view/desktop_view/widgets/hidoc_bulletin_desktop.dart';
import 'package:hidoc_app/view/desktop_view/widgets/news_card_desktop.dart';
import 'package:hidoc_app/view/mobile_view/widgets/special_future_card.dart';
import 'package:hidoc_app/view/widgets/article_dropdown_card.dart';
import 'package:hidoc_app/view/widgets/quizzes_and_medical_card.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                children: [
                  const SizedBox(
                    height: AppConstants.largeMargin,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Articles",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  const SizedBox(
                    height: AppConstants.largeMargin,
                  ),
                  ArticleDropDownCard(
                    width: size.width * 0.4,
                    hieght: 50,
                  ),
                  const SizedBox(
                    height: AppConstants.largeMargin,
                  ),
                  // content selector=======
                  const ArticleCardDesktop(),
                  const SizedBox(
                    height: AppConstants.largeMargin,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Hidoc Bulletin",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  // Hidoc bulletin and trending bulletin
                  const HidocBulletinDesktop(),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 400,
                    height: 50,
                    child: ElevatedButtons(
                      buttonAction: () {},
                      color: Theme.of(context).primaryColor,
                      text: "Read More Bulletin",
                    ),
                  ),
                  const SizedBox(
                    height: AppConstants.extraLargeMargin,
                  ),
                  // Latest article Trending Articles,Explore more Articles
                  const AllTypeArticlesDesktop(),
                  const SizedBox(
                    height: AppConstants.extraLargeMargin,
                  ),
                  Text(
                    "What's more on Hidoc Dr.",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: AppConstants.extraLargeMargin,
                  ),
                  SizedBox(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        NewsCardDesktop(),
                        SizedBox(
                          width: AppConstants.extraLargeMargin,
                        ),
                        Expanded(
                          child: QuizessAndMedicalCard(),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppConstants.largeMargin,
                  ),
                  const SpecialFutureCard(
                    isMobile: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppConstants.extraLargeMargin,
            ),
            const Footer()
          ],
        ),
      ),
    );
  }
}
