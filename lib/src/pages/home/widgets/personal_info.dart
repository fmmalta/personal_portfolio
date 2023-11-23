import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/pages/home/widgets/gradient_text.dart';
import 'package:personal_portfolio/src/core/constans.dart';

import 'package:url_launcher/url_launcher.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Wrap(
          direction: Axis.vertical,
          spacing: 10,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            CircleAvatar(
              radius: constraints.maxWidth / (constraints.maxWidth / 68),
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: constraints.maxWidth / (constraints.maxWidth / 65),
                backgroundImage: const AssetImage('assets/IMG_0926.jpeg'),
              ),
            ),
            SelectableText.rich(TextSpan(
              text: "Hi, I'm Fellipe Malta 👋",
              style: Theme.of(context).textTheme.bodyLarge,
            )),
            SizedBox(
              width: constraints.maxWidth / 1.5,
              child: AnimatedTextKit(
                isRepeatingAnimation: false,
                animatedTexts: [
                  GradientAnimatedText(
                    "Building digital products, brands and experience.",
                    gradient: kGradientText,
                    speed: const Duration(milliseconds: 70),
                    textAlign: TextAlign.center,
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await launchUrl(
                  Uri(
                    scheme: "https",
                    host: "www.github.com",
                    path: "/fmmalta",
                  ),
                  mode: LaunchMode.externalApplication,
                );
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  backgroundColor: kAccentColor,
                  foregroundColor: kAccentColor,
                  surfaceTintColor: Colors.white10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  side: const BorderSide(color: kAccentColor)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Latest Projects',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.open_in_new,
                    size: 20,
                    color: kDefaultTextColor,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
