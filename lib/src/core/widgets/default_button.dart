import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/constans.dart';

class DefaultButton extends TextButton {
  DefaultButton({
    required String label,
    required void Function()? onTap,
    TextStyle? textStyle,
    super.key,
  }) : super(
          onPressed: onTap,
          child: Text(label),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              textStyle ?? const TextStyle(),
            ),
            foregroundColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.white;
                } else {
                  return kDefaultTextColor;
                }
              },
            ),
          ),
        );

  DefaultButton.icon({
    required String label,
    required void Function()? onTap,
    required Widget icon,
    TextStyle? textStyle,
    super.key,
  }) : super(
          onPressed: onTap,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              icon,
              const SizedBox(width: 10),
              Flexible(child: Text(label))
            ],
          ),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              textStyle ?? const TextStyle(),
            ),
            foregroundColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.white;
                } else {
                  return kDefaultTextColor;
                }
              },
            ),
          ),
        );
}
