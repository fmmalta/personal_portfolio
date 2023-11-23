import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/app/pages/home/widgets/gradient_text.dart';
import 'package:personal_portfolio/src/constans.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        children: [
          GradientText(
            gradient: kGradientText,
            'Collaborate with me to create impactful results.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const CardPresentation(),
        ],
      ),
    );
  }
}

class CardPresentation extends StatelessWidget {
  const CardPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: LayoutBuilder(builder: (context, constraints) {
        return Wrap(
          direction:
              constraints.maxWidth < 600 ? Axis.vertical : Axis.horizontal,
          alignment: WrapAlignment.spaceEvenly,
          spacing: 20,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: aboutMeItem
              .map(
                (item) => AboutMeCard(
                  icon: item.icon,
                  title: item.title,
                  description: item.description,
                ),
              )
              .toList(),
        );
      }),
    );
  }
}

class AboutMeCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const AboutMeCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: kAccentColor, width: 1),
        borderRadius: BorderRadius.circular(3),
        color: const Color(0xFF1A1A1A),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon, color: Colors.white),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: GradientText(
              gradient: kGradientText,
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          SizedBox(
            child: SelectableText(
              description,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}

class AboutMeItem {
  final IconData icon;
  final String title;
  final String description;

  AboutMeItem(this.icon, this.title, this.description);
}

final aboutMeItem = <AboutMeItem>[
  AboutMeItem(
    Icons.mobile_friendly,
    'Mobile Development',
    'Transforming ideias into exceptional mobile app experiences.',
  ),
  AboutMeItem(
    Icons.flash_on,
    'Development',
    'Bringing your vision to life with the latest technology and design trends.',
  ),
  AboutMeItem(
    Icons.lightbulb,
    'Experience',
    '5+ years developing systems using Flutter & Dart. By the way, this site was made using Flutter.',
  ),
];
