import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class ArticlesCard extends StatelessWidget {
  const ArticlesCard({super.key});

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
                  "Points \n 2",
                  style: Theme.of(context).primaryTextTheme.labelMedium,
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
                      "At Google I/O 2021, Google announced the next evolution of Material Design, Material You",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  const SizedBox(
                    height: AppConstants.mediumPadding,
                  ),
                  const Flexible(
                    child: Text(
                      "At Google I/O 2021, Google announced the next evolution of Material Design, Material You",
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
        decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(20),
            topEnd: Radius.circular(20),
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2021/03/609849-mental-health-hub-1200x675-twitter.jpg",
            ),
          ),
        ),
      );
}
