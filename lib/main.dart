import 'package:flutter/material.dart';
import 'package:hidoc_app/res/styles/app_theme.dart';
import 'package:hidoc_app/view/desktop_view/desktop_scaffold.dart';
import 'package:hidoc_app/view/mobile_view/mobile_scaffold.dart';
import 'package:hidoc_app/res/responsive/responsive_layout.dart';
import 'package:hidoc_app/view/tablet_view/tablet_scaffold.dart';
import 'package:hidoc_app/view_model/articles_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ArticlesViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.myTheme,
        home: const ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tabScaffold: TabletScaffold(),
          deskTopScaffold: DesktopScaffold(),
        ),
      ),
    );
  }
}
