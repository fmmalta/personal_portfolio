import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      builder: (context) => AnnotatedRegion<SystemUiOverlayStyle>(
        value:
            SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black),
        child: MaterialApp(
            color: Colors.black,
            title: 'Fellipe Malta\'s Portfolio',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: primaryBlack,
              useMaterial3: true,
              fontFamily: 'Outfit',
              scaffoldBackgroundColor: Colors.black,
              dividerTheme: const DividerThemeData(color: Colors.white10),
              textTheme: TextTheme(
                bodyLarge:
                    TextStyle(fontSize: 3.7.sw, color: kDefaultTextColor),
                bodyMedium: TextStyle(color: kDefaultTextColor, fontSize: 3.sw),
                bodySmall:
                    TextStyle(color: kDefaultTextColor, fontSize: 2.5.sw),
              ),
            ),
            home: const HomeScreen()),
      ),
    );
  }

  final MaterialColor primaryBlack = const MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(0xFF000000),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );
}
