import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/app/widgets/buttons/get_in_touch_button.dart';
import 'package:personal_portfolio/src/app/widgets/buttons/learn_dart_button.dart';
import 'package:personal_portfolio/src/app/widgets/buttons/linkedin_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.sw, vertical: 1.sh),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Flexible(child: GetInTouchButton()),
                    Flexible(child: LearnDartButton()),
                  ],
                ),
              ),
              Flexible(child: LinkedinButton()),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}
