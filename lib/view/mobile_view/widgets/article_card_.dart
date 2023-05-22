import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class ArticlesCard extends StatelessWidget {
  const ArticlesCard(
      {super.key,
      this.imageUrl,
      this.articleTitle,
      this.articleDiscrption,
      this.rewardPoints});

  final String? imageUrl;
  final String? articleTitle;
  final String? articleDiscrption;
  final String? rewardPoints;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          newsImage(size),
          Container(
            height: 200,
            width: size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(20),
                bottomEnd: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                titlleAndContentOfNews(context),
                readFullArticleAndEarnpoints(size, context)
              ],
            ),
          ),
        ],
      ),
    );
  }

  // readFr
  Container readFullArticleAndEarnpoints(Size size, BuildContext context) =>
      Container(
        margin: AppConstants.marginLeft(AppConstants.mediumMargin),
        height: 80,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Read Full Articles to earn points",
              style: Theme.of(context).primaryTextTheme.bodyLarge,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                  ),
                ),
                height: 70,
                width: 70,
                child: Text(
                  "Points \n $rewardPoints",
                  style: Theme.of(context).primaryTextTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      );

  Container titlleAndContentOfNews(BuildContext context) => Container(
        padding: const EdgeInsets.only(
          left: AppConstants.mediumPadding,
          right: AppConstants.mediumPadding,
          top: AppConstants.mediumPadding,
        ),
        height: 120,
        child: Row(
          children: [
            Flexible(
              child: Column(
                children: [
                  Flexible(
                    child: Text(
                      articleTitle ?? "",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  const SizedBox(
                    height: AppConstants.smallMargin,
                  ),
                  Flexible(
                    child: Text(
                      articleDiscrption ?? "",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Container newsImage(Size size) => Container(
        height: 200,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: const BorderRadiusDirectional.only(
            topStart: Radius.circular(20),
            topEnd: Radius.circular(20),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(imageUrl != null && imageUrl!.isNotEmpty
                ? imageUrl!
                : "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2021/03/609849-mental-health-hub-1200x675-twitter.jpg"),
          ),
        ),
      );
}
