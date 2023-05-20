import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';
import 'package:hidoc_app/res/widgets/elevated_button.dart';

class ScreenElavatedButtons extends StatelessWidget {
  const ScreenElavatedButtons(
      {super.key,
      this.buttonAction,
      this.text,
      this.marginHorzontal = 60,
      this.marginVertical = AppConstants.extraLargeMargin});
  final void Function()? buttonAction;
  final String? text;
  final double marginHorzontal;
  final double marginVertical;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(
        horizontal: marginHorzontal,
        vertical: marginVertical,
      ),
      child: ElevatedButtons(
        buttonAction: buttonAction,
        text: text,
      ),
    );
  }
}
