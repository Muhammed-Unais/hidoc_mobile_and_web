import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColorLight,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            height: 30,
            width: 100,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "hidoc",
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.titleLarge,
              ),
            ),
          ),
         
        ],
      ),
    );
  }
}
