import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class TrendingArticles extends StatelessWidget {
  const TrendingArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
            child: Image.network(
                "https://media.istockphoto.com/id/1390650720/photo/digital-network-connection-abstract-connection-of-dots-and-lines-technology-background-plexus.jpg?b=1&s=170667a&w=0&k=20&c=SUkUz3EzbbcC25vGSHdV_9MxR0Mun8giVcuHoyOKwDo="),
          ),
          const SizedBox(
            height: AppConstants.smallMargin,
          ),
          Text(
            "of course, there's the flip side of that where vice versaa hen, of hen, of course, there's the flip side of that",
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
                  child: Image.network(
                      "https://media.istockphoto.com/id/1390650720/photo/digital-network-connection-abstract-connection-of-dots-and-lines-technology-background-plexus.jpg?b=1&s=170667a&w=0&k=20&c=SUkUz3EzbbcC25vGSHdV_9MxR0Mun8giVcuHoyOKwDo="),
                ),
              ),
              const SizedBox(
                width: AppConstants.smallMargin,
              ),
              Flexible(
                child: Text(
                  "of course, there's the flip side of that where vice versaa hen, of hen, of course, there's the flip side of that",
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
            "of course, there's the flip side of that where vice versaa hen, of hen, of course, there's the flip side of that",
            style: Theme.of(context).textTheme.bodyLarge,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
