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
            radius: 10.2.sw,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 10.sw,
              backgroundImage: const AssetImage('assets/IMG_0926.jpeg'),
            ),
          ),
          SizedBox(height: 3.sh),
          SelectableText.rich(
            TextSpan(
              text: "Hi, I'm Fellipe Malta 👋",
              style: TextStyle(fontSize: 1.6.sw),
            ),
          ),
          SizedBox(height: 3.sh),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.2,
            child: AnimatedTextKit(
              isRepeatingAnimation: false,
              animatedTexts: [
                GradientAnimatedText(
                  "Building digital products, brands and experience.",
                  gradient: kGradientText,
                  speed: const Duration(milliseconds: 70),
                  textAlign: TextAlign.center,
                  textStyle: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 3.sw),
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
                padding:
                    EdgeInsets.symmetric(horizontal: 4.sw, vertical: 2.5.sh),
                backgroundColor: const Color(0xFF242424),
                foregroundColor: const Color(0xFF242424),
                surfaceTintColor: Colors.white10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                side: const BorderSide(color: Color(0xFF242424))),
            child: IntrinsicWidth(
              child: Row(
                children: [
                  Text(
                    'Latest Projects',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 1.5.sw),
                  const Icon(Icons.open_in_new, color: kDefaultTextColor)
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
