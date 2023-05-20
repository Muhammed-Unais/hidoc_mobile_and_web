import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/res/widgets/rounded_icon_button.dart';

class QuizessAndMedicalCard extends StatelessWidget {
  const QuizessAndMedicalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
      ),
      padding: const EdgeInsets.all(AppConstants.mediumPadding),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  const Flexible(
                    child: RoundedIconButton(
                      icon: Icons.quiz_outlined,
                    ),
                  ),
                  const SizedBox(
                    width: AppConstants.smallMargin,
                  ),
                  Flexible(
                    child: Text(
                      "Quizzes :",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(
                    width: AppConstants.smallMargin,
                  ),
                  Flexible(
                    child: Text(
                      "Participate & Win Exciting Prizes",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  const Flexible(
                    child: RoundedIconButton(icon: Icons.calculate),
                  ),
                  const SizedBox(
                    width: AppConstants.smallMargin,
                  ),
                  Flexible(
                    child: Text(
                      "Medical Calculators:",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(
                    width: AppConstants.smallMargin,
                  ),
                  Flexible(
                    child: Text(
                      "Participate & Win Exciting Prizes",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  )
                ],
              ),
              const Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
