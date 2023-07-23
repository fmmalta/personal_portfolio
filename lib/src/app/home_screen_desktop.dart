import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/app/widgets/about_me.dart';
import 'package:personal_portfolio/src/app/widgets/personal_info.dart';
import 'package:personal_portfolio/src/app/widgets/top_menu_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [TopBar(), PersonalInfo(), AboutMeSection()],
      ),
    );
  }
}
