import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/view/mobile_view/widgets/article_card_.dart';
import 'package:hidoc_app/view/mobile_view/widgets/article_dropdown_card.dart';
import 'package:hidoc_app/view/mobile_view/widgets/top_app_bar.dart';
import 'package:hidoc_app/view/mobile_view/widgets/top_paint.dart';

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                // Article Contect Drop Down
                const ArticleDropDownCard(),
                const SizedBox(
                  height: AppConstants.mediumMargin,
                ),
                // Articles Card
                const ArticlesCard(),
                const SizedBox(
                  height: AppConstants.mediumMargin,
                ),
                Text(
                  "HiDoc Bulletin",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
