import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/constans.dart';

class DefaultButton extends TextButton {
  DefaultButton({
    required String label,
    required void Function()? onTap,
    TextStyle? textStyle,
    bool selected = false,
    super.key,
  }) : super(
          onPressed: onTap,
          child: Text(label),
          statesController:
              MaterialStatesController({if (selected) MaterialState.selected}),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              textStyle ?? const TextStyle(),
            ),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
            foregroundColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.hovered)) {
                  return Colors.white;
                } else if (states.contains(MaterialState.selected)) {
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
            children: <Widget>[icon, const SizedBox(width: 10), Text(label)],
          ),
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              textStyle ?? const TextStyle(),
            ),
            padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
            overlayColor: MaterialStateProperty.all(Colors.transparent),
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
