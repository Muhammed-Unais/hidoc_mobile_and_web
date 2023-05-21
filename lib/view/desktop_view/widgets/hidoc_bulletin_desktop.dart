import 'package:flutter/material.dart';
import 'package:hidoc_app/view/widgets/hidoc_bulletin_content.dart';
import 'package:hidoc_app/view/widgets/trending_hidoc_bulletin.dart';

class HidocBulletinDesktop extends StatelessWidget {
  const HidocBulletinDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Row(
        children: [
          Flexible(
            child: SizedBox(
              child: Column(
                children: List.generate(
                  4,
                  (index) => HiDocBulletinContent(index: index),
                ),
              ),
            ),
          ),
          const Flexible(
            child: TrendingHidocBulletin(),
          ),
        ],
      ),
    );
  }
}
