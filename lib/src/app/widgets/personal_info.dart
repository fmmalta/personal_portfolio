import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/app/widgets/gradient_text.dart';
import 'package:personal_portfolio/src/constans.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.sw),
      child: Column(
        children: [
          SizedBox(height: 3.sh),
          CircleAvatar(
            radius: 10.15.sw,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 10.sw,
              backgroundImage: const AssetImage('assets/IMG_0926.jpeg'),
            ),
          ),
          SizedBox(height: 3.sh),
          const SelectableText.rich(TextSpan(text: "Hi, I'm Fellipe Malta 👋")),
          SizedBox(height: 3.sh),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
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
          SizedBox(height: 3.sh),
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
                padding: EdgeInsets.symmetric(
                  horizontal: 2.sw,
                  vertical: 1.5.sh,
                ),
                backgroundColor: kAccentColor,
                foregroundColor: kAccentColor,
                surfaceTintColor: Colors.white10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                side: const BorderSide(color: kAccentColor)),
            child: IntrinsicWidth(
              child: Row(
                children: [
                  Text(
                    'Latest Projects',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(width: 1.5.sw),
                  Icon(Icons.open_in_new, size: 2.sh, color: kDefaultTextColor)
                ],
              ),
            ),
          ),
          SizedBox(height: 3.sh),
          const Divider(),
        ],
      ),
    );
  }
}
