import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/app/widgets/gradient_text.dart';
import 'package:personal_portfolio/src/constans.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        const CircleAvatar(
          radius: 102,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/IMG_0926.jpeg'),
          ),
        ),
        const SizedBox(height: 30),
        const SelectableText.rich(
          TextSpan(
            text: "Hi, I'm Fellipe Malta 👋",
            style: TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(height: 30),
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
                    .copyWith(fontSize: 36),
              )
            ],
          ),
        ),
        const SizedBox(height: 30),
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
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
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
                const SizedBox(width: 15),
                const Icon(Icons.open_in_new, color: kDefaultTextColor)
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        const Divider(color: Colors.white10),
      ],
    );
  }
}
