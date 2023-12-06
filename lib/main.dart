import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_portfolio/src/pages/home/home_screen.dart';
import 'package:personal_portfolio/src/pages/learn_dart/learn_dart.dart';
import 'package:personal_portfolio/src/pages/home/widgets/top_menu_bar.dart';
import 'package:personal_portfolio/src/core/constans.dart';

void main() {
  runApp(const MyApp());
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final _router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      pageBuilder: (context, state, child) {
        return NoTransitionPage(
          child: Scaffold(
            appBar: const TopBar(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: child,
            ),
          ),
        );
      },
      routes: [
        GoRoute(
            path: '/',
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: HomeScreen())),
        GoRoute(
            path: LearnDart.routeName,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) =>
                NoTransitionPage(child: LearnDart())),
      ],
    )
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.black),
      child: MaterialApp.router(
        routerConfig: _router,
        color: Colors.black,
        title: 'Fellipe Malta\'s Portfolio',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: primaryBlack,
          useMaterial3: true,
          fontFamily: 'Outfit',
          scaffoldBackgroundColor: Colors.black,
          dividerTheme: const DividerThemeData(color: Colors.white10),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 24, color: kDefaultTextColor),
            bodyMedium: TextStyle(color: kDefaultTextColor, fontSize: 20),
            bodySmall: TextStyle(color: kDefaultTextColor, fontSize: 14),
          ),
        ),
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
