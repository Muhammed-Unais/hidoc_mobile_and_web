import 'package:flutter/material.dart';
import 'package:hidoc_app/model/article_model.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/view/widgets/hidoc_bulletin_content.dart';

class TrendingHidocBulletin extends StatelessWidget {
  const TrendingHidocBulletin({super.key, this.width, this.trandingBulletin});

  final double? width;
  final List<Article>? trandingBulletin;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      padding: const EdgeInsets.all(AppConstants.largeMargin),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Trending Hidoc Bulletin",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: AppConstants.mediumMargin,
          ),
          Column(
            children: List<Widget>.generate(
              trandingBulletin?.length ?? 0,
              (index) => HiDocBulletinContent(
                description: trandingBulletin?[index].articleDescription,
                title: trandingBulletin?[index].articleDescription,
                isTrending: true,
                index: index,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
