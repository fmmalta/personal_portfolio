import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/widgets/default_button.dart';

class LearnDartButton extends StatelessWidget {
  const LearnDartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: () {},
      textStyle: Theme.of(context).textTheme.bodySmall,
      label: 'Learn Dart',
    );
  }
}
