import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tabScaffold,
      required this.deskTopScaffold});

  final Widget mobileScaffold;
  final Widget tabScaffold;
  final Widget deskTopScaffold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return mobileScaffold;
        } else if (constraints.maxWidth <= 1024) {
          return tabScaffold;
        } else {
          return deskTopScaffold;
        }
      },
    );
  }
}
