import 'package:flutter/material.dart';
import 'package:hidoc_app/res/app_constatns.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 120,
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      shadowColor: Colors.black,
      elevation: 10,
      leading: const Align(
        alignment: Alignment.center,
        child: Text(
          'hidoc Dr.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          AppBarItem(
            title: 'Social Cases',
            selected: false,
          ),
          AppBarItem(
            title: 'Quizzes',
            selected: false,
          ),
          AppBarItem(
            title: 'Articles',
            selected: true,
          ),
          AppBarItem(
            title: 'Drugs',
            selected: false,
          ),
          AppBarItem(
            title: 'Webinar',
            selected: false,
          ),
          AppBarItem(
            title: 'Calculators',
            selected: false,
          ),
          AppBarItem(
            title: 'Guidelines',
            selected: false,
          ),
          AppBarItem(
            title: 'Survey',
            selected: false,
          ),
          AppBarItem(
            title: 'News',
            selected: false,
          ),
          AppBarItem(
            title: 'Clinical Trials',
            selected: false,
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        const SizedBox(
          width: AppConstants.largeMargin,
        )
      ],
    );
  }
}

class AppBarItem extends StatelessWidget {
  final String title;
  final bool selected;

  const AppBarItem({
    super.key,
    required this.title,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.cyan : Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
