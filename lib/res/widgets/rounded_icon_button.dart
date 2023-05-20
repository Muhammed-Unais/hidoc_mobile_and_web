import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({super.key, required this.icon});

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Theme.of(context).primaryColorLight),
      child: Icon(icon, size: 30, color: Theme.of(context).primaryColorDark),
    );
  }
}
