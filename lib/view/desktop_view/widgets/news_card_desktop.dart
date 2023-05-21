import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class NewsCardDesktop extends StatelessWidget {
  const NewsCardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: 200,
      width: size.width * 0.5,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5, color: Colors.grey),
      ),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 200,
              padding: const EdgeInsets.all(AppConstants.largePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("News"),
                  SizedBox(
                    height: AppConstants.largeMargin,
                  ),
                  Text(
                    "lease find the design attached [Link to Designs mentioned below] for mobile and web, design the same and show the response getting from api f",
                  )
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
