import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class TrendingArticles extends StatelessWidget {
  const TrendingArticles(
      {super.key,
      this.width = double.infinity,
      this.trendingArticleTitle,
      this.fullImageUrl,
      this.smallImageUrl,
      this.smallArticleTitle,
      this.smallArticleDiscription});

  final double width;

  final String? trendingArticleTitle;
  final String? fullImageUrl;
  final String? smallImageUrl;
  final String? smallArticleTitle;
  final String? smallArticleDiscription;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
      ),
      padding: const EdgeInsets.all(AppConstants.largePadding),
      child: Column(
        children: [
          Text(
            "Trending Articles",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const Divider(
            thickness: 1,
          ),
          ClipRRect(
            child: Image.network(fullImageUrl ??
                "https://media.istockphoto.com/id/1390650720/photo/digital-network-connection-abstract-connection-of-dots-and-lines-technology-background-plexus.jpg?b=1&s=170667a&w=0&k=20&c=SUkUz3EzbbcC25vGSHdV_9MxR0Mun8giVcuHoyOKwDo="),
          ),
          const SizedBox(
            height: AppConstants.smallMargin,
          ),
          Text(
            trendingArticleTitle ?? "",
            style: Theme.of(context).textTheme.bodyLarge,
            maxLines: 2,
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Row(
            children: [
              SizedBox(
                height: 60,
                width: 100,
                child: ClipRRect(
                  child: Image.network(smallImageUrl ??
                      "https://media.istockphoto.com/id/1390650720/photo/digital-network-connection-abstract-connection-of-dots-and-lines-technology-background-plexus.jpg?b=1&s=170667a&w=0&k=20&c=SUkUz3EzbbcC25vGSHdV_9MxR0Mun8giVcuHoyOKwDo="),
                ),
              ),
              const SizedBox(
                width: AppConstants.smallMargin,
              ),
              Flexible(
                child: Text(
                  smallArticleTitle ?? "",
                  style: Theme.of(context).textTheme.bodyLarge,
                  maxLines: 2,
                ),
              )
            ],
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Text(
            smallArticleDiscription ??"",
            style: Theme.of(context).textTheme.bodyLarge,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
