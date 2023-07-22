import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/app/home_screen_desktop.dart';
import 'package:personal_portfolio/src/constans.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) => MaterialApp(
          title: 'Fellipe Malta\'s Portfolio',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            fontFamily: 'Outfit',
            scaffoldBackgroundColor: Colors.black,
            dividerTheme: const DividerThemeData(color: Colors.white10),
            textTheme: const TextTheme(
              bodyMedium: TextStyle(color: kDefaultTextColor),
              bodySmall: TextStyle(color: kDefaultTextColor),
            ),
          ),
          home: const HomeScreenDesktop()),
    );
  }
}
