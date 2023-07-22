import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/app/desktop/widgets/about_me.dart';
import 'package:personal_portfolio/src/app/desktop/widgets/personal_info.dart';
import 'package:personal_portfolio/src/app/desktop/widgets/top_menu_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreenDesktop extends StatefulWidget {
  const HomeScreenDesktop({super.key});

  @override
  State<HomeScreenDesktop> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenDesktop> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: const [TopBar(), PersonalInfo(), AboutMeSection()],
        ),
      ),
    );
  }
}
