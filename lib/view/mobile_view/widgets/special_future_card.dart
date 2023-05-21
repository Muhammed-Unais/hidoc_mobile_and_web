import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class SpecialFutureCard extends StatelessWidget {
  const SpecialFutureCard({super.key, this.isMobile = true});

  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: isMobile
          ? Colors.orange.withOpacity(0.2)
          : Theme.of(context).primaryColor.withOpacity(0.2),
      padding: const EdgeInsets.all(AppConstants.largePadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              "Social Network for doctors - A Special feature on Hidoc Dr.",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  isMobile ? Colors.orange : Theme.of(context).primaryColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text("Visit"),
          )
        ],
      ),
    );
  }
}
