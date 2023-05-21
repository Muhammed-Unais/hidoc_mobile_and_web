import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class ArticleCardDesktop extends StatelessWidget {
  const ArticleCardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: 280,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              newsImage(size, context),
              const SizedBox(
                width: AppConstants.mediumMargin,
              ),
              articleTitleAndContent(context, size)
            ],
          ),
          const SizedBox(height: AppConstants.extraLargeMargin,),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Container articleTitleAndContent(BuildContext context, Size size) {
    return Container(
      padding: const EdgeInsets.only(
        top: AppConstants.mediumPadding,
      ),
      height: 230,
      width: size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              "At Google I/O 2021, Google announced the next evolution of Material Design, Material You",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(
            height: AppConstants.mediumMargin,
          ),
          Flexible(
            child: Text(
              "At Google I/O 2021, Google announced the next evolution of Material Design, Material You",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          const SizedBox(
            height: AppConstants.extraLargeMargin,
          ),
          Text(
            "Read Full Articles to earn points",
            style: Theme.of(context).primaryTextTheme.bodyLarge,
          ),
          const SizedBox(
            height: AppConstants.extraLargeMargin,
          ),
          Text(
            "Published Date: 15 Apr 2023",
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }

  Container newsImage(Size size, BuildContext context) {
    return Container(
      height: 230,
      width: size.width * 0.24,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            "https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg",
          ),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
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
    );
  }
}
