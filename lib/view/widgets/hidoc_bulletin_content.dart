import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class HiDocBulletinContent extends StatelessWidget {
  const HiDocBulletinContent(
      {super.key,
      this.isTrending = false,
      this.width,
      required this.index});

  final bool isTrending;
  final double? width;
  final int index;

  @override
  Widget build(BuildContext context) {
    //
    return SizedBox(
      width: width ??double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isTrending
              ? const SizedBox()
              : Container(
                  color: Theme.of(context).primaryColor,
                  width: 160,
                  height: 10,
                ),
          const SizedBox(
            height: AppConstants.smallMargin,
          ),
          Text(
            "hen, of course, there's the flip side of that where vice versa?",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: AppConstants.smallMargin,
          ),
          Text(
            " of course, there's the flip side of that where vice versaa hen, of hen, of course, there's the flip side of that where vice versa course, there's the flip side of that where vice versahen, of course, there's the flip side of that where vice versa?",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: AppConstants.smallMargin,
          ),
          Text(
            "Read More",
            style: Theme.of(context).primaryTextTheme.bodyMedium,
          ),
          const SizedBox(
            height: AppConstants.largeMargin,
          )
        ],
      ),
    );
  }
}
