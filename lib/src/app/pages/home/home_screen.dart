import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/app/pages/home/widgets/about_me.dart';
import 'package:personal_portfolio/src/app/pages/home/widgets/personal_info.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [PersonalInfo(), Divider(), AboutMeSection()],
    );
  }
}
