import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:personal_portfolio/src/pages/home/widgets/buttons/get_in_touch_button.dart';
import 'package:personal_portfolio/src/pages/home/widgets/buttons/learn_dart_button.dart';
import 'package:personal_portfolio/src/pages/home/widgets/buttons/linkedin_button.dart';
import 'package:personal_portfolio/src/core/widgets/default_button.dart';
import 'package:personal_portfolio/src/pages/learn_dart/learn_dart.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                DefaultButton(
                    label: 'Home',
                    textStyle: Theme.of(context).textTheme.bodySmall,
                    onTap: () {
                      context.go('/');
                    }),
                LearnDartButton(
                  onTap: () {
                    context.go(LearnDart.routeName);
                  },
                ),
                const GetInTouchButton(),
              ],
            ),
            const LinkedinButton(),
          ],
        ),
        const Divider(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 1.2);
}
