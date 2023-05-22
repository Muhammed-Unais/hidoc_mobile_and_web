import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, this.imageUrl, this.newsContent, this.newsTitle});

  final String? imageUrl;
  final String? newsContent;
  final String? newsTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            padding: const EdgeInsets.all(AppConstants.largePadding),
            color: Colors.transparent.withOpacity(0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsTitle??"News",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: AppConstants.largeMargin,
                ),
                Text(
                  newsContent ?? "",
                  style: Theme.of(context).textTheme.bodyLarge,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  imageUrl ??
                      "https://media.istockphoto.com/id/1390650720/photo/digital-network-connection-abstract-connection-of-dots-and-lines-technology-background-plexus.jpg?b=1&s=170667a&w=0&k=20&c=SUkUz3EzbbcC25vGSHdV_9MxR0Mun8giVcuHoyOKwDo=",
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
