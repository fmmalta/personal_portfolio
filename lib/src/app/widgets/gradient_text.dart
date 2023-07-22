import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign textAlign;
  final Gradient gradient;

  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    required this.style,
    this.textAlign = TextAlign.start,
  });
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: SelectableText(text, textAlign: textAlign, style: style),
    );
  }
}

class GradientAnimatedText extends AnimatedText {
  static const extraLengthForBlinks = 8;
  final Duration speed;
  final Curve curve;
  final String cursor;

  final Gradient gradient;

  GradientAnimatedText(
    String text, {
    required this.gradient,
    TextAlign textAlign = TextAlign.start,
    TextStyle? textStyle,
    this.speed = const Duration(milliseconds: 30),
    this.curve = Curves.linear,
    this.cursor = '_',
  }) : super(
          text: text,
          textAlign: textAlign,
          textStyle: textStyle,
          duration: speed * (text.characters.length + extraLengthForBlinks),
        );

  late Animation<double> _typewriterText;

  @override
  void initAnimation(AnimationController controller) {
    _typewriterText = CurveTween(
      curve: curve,
    ).animate(controller);
  }

  @override
  Widget completeText(BuildContext context) => ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        ),
        child: SelectableText.rich(
          TextSpan(
            children: [
              TextSpan(text: text),
              TextSpan(
                text: cursor,
                style: const TextStyle(color: Colors.transparent),
              )
            ],
            style: textStyle,
          ),
          textAlign: textAlign,
        ),
      );

  @override
  Widget animatedBuilder(BuildContext context, Widget? child) {
    final textLen = textCharacters.length;
    final typewriterValue = (_typewriterText.value.clamp(0, 1) *
            (textCharacters.length + extraLengthForBlinks))
        .round();

    var showCursor = true;
    var visibleString = text;
    if (typewriterValue == 0) {
      visibleString = '';
      showCursor = false;
    } else if (typewriterValue > textLen) {
      showCursor = (typewriterValue - textLen) % 2 == 0;
    } else {
      visibleString = textCharacters.take(typewriterValue).toString();
    }

    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: SelectableText.rich(
        TextSpan(
          children: [
            TextSpan(text: visibleString),
            TextSpan(
              text: cursor,
              style: showCursor
                  ? null
                  : const TextStyle(color: Colors.transparent),
            )
          ],
          style: textStyle,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
