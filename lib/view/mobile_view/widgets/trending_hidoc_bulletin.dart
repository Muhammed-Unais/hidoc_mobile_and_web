import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/view/mobile_view/widgets/hidoc_bulletin_content.dart';

class TrendingHidocBulletin extends StatelessWidget {
  const TrendingHidocBulletin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:const EdgeInsets.all(AppConstants.largeMargin),
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
          const SizedBox(height: AppConstants.mediumMargin,),
          Column(
            children: List<Widget>.generate(
              10,
              (index) => const HiDocBulletinContent(isTrending: true,),
            ),
          ),
        ],
      ),
    );
  }
}
