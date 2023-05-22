import 'package:flutter/material.dart';
import 'package:hidoc_app/model/article_model.dart';
import 'package:hidoc_app/view/widgets/hidoc_bulletin_content.dart';
import 'package:hidoc_app/view/widgets/trending_hidoc_bulletin.dart';

class HidocBulletinDesktop extends StatelessWidget {
  const HidocBulletinDesktop({super.key, this.bulletin, this.trendingBuletin});

  final List<Article>? bulletin;
  final List<Article>? trendingBuletin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: SizedBox(
              child: Column(
                children: List.generate(
                  bulletin?.length ?? 0,
                  (index) => HiDocBulletinContent(
                    index: index,
                    description: bulletin?[index].articleDescription,
                    title: bulletin?[index].articleTitle,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: TrendingHidocBulletin(
              trandingBulletin: trendingBuletin,
            ),
          ),
        ],
      ),
    );
  }
}
