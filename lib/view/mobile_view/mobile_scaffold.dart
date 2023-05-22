import 'package:flutter/material.dart';
import 'package:hidoc_app/view/mobile_view/widgets/home_icon.dart';
import 'package:hidoc_app/view/mobile_view/widgets/mobile_scaffold_body.dart';
import 'package:hidoc_app/view/mobile_view/widgets/top_app_bar.dart';
import 'package:hidoc_app/view/mobile_view/widgets/top_paint.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Top left paint
          Positioned(
            top: 0,
            left: 0,
            child: CustomPaint(
              size: Size(size.width * 0.45, size.height * 0.25),
              painter: RPSCustomPainter(),
            ),
          ),
          // top app bar
          Positioned(
            top: size.height * 0.08,
            left: 20,
            right: 20,
            child: const TopAppBar(),
          ),
          const Positioned(
            top: 90,
            left: 20,
            child: HomeIcon(),
          ),
          Positioned(
            top: 105,
            left: 200,
            child: Text(
              "ARTICLES",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
          // body
          Positioned(
            top: size.height * 0.2,
            left: 20,
            right: 20,
            bottom: 0,
            child: const SingleChildScrollView(child: MobileScaffoldBody()),
          ),
        ],
      ),
    );
  }
}
