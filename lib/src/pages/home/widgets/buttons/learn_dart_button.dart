import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/widgets/default_button.dart';

class LearnDartButton extends StatefulWidget {
  final void Function()? onTap;
  const LearnDartButton({this.onTap, super.key});

  @override
  State<LearnDartButton> createState() => _LearnDartButtonState();
}

class _LearnDartButtonState extends State<LearnDartButton>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultButton(
          onTap: widget.onTap,
          textStyle: Theme.of(context).textTheme.bodySmall,
          label: 'Learn Dart',
        ),
        const Positioned(
          top: 5,
          right: 5,
          child: Icon(
            Icons.new_releases,
            size: 12,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
