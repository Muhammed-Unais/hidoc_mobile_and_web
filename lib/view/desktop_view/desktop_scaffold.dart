import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/view/mobile_view/widgets/article_dropdown_card.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
            width: size.width * 0.5,
            hieght: 50,
          )
        ],
      ),
    );
  }
}
