import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class SpecialFutureCard extends StatelessWidget {
  const SpecialFutureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.withOpacity(0.2),
      padding: const EdgeInsets.all(AppConstants.largePadding),
      child: Row(
        children: [
           Flexible(
            child: Text(
              "Social Network for doctors - A Special feature on Hidoc Dr.",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
            onPressed: () {

            },
            child: const Text("Visit"),
          )
        ],
      ),
    );
  }
}
