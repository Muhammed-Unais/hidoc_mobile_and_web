import 'package:flutter/material.dart';

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons(
      {super.key, this.buttonAction, this.text, this.color = Colors.orange});

  final void Function()? buttonAction;
  final String? text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.zero,
          ),
        ),
      ),
      onPressed: buttonAction,
      child: Text(text ?? ""),
    );
  }
}
