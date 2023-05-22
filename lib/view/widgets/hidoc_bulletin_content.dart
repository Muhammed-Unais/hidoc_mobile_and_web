import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class HiDocBulletinContent extends StatelessWidget {
  const HiDocBulletinContent(
      {super.key,
      this.isTrending = false,
      this.width,
      required this.index,
      this.title,
      this.description});

  final bool isTrending;
  final double? width;
  final int index;
  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    //
    return SizedBox(
      width: width ?? double.infinity,
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
            title ?? "",
            style: Theme.of(context).textTheme.titleSmall,
            maxLines: 2,
          ),
          const SizedBox(
            height: AppConstants.smallMargin,
          ),
          Text(
            description ?? "",
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
