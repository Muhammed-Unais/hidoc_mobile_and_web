import 'package:flutter/material.dart';
import 'package:hidoc_app/view/mobile_view/widgets/home_icon.dart';

class TopAppBar extends StatelessWidget {
  const TopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: size.width * 0.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const HomeIcon(),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "ARTICLES",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
