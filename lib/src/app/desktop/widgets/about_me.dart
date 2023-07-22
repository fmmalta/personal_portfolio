import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/app/widgets/gradient_text.dart';
import 'package:personal_portfolio/src/constans.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.2,
          margin: const EdgeInsets.symmetric(vertical: 30),
          child: GradientText(
            gradient: kGradientText,
            'Collaborate with me to create impactful results.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 36,
                ),
          ),
        ),
        Container(
          height: 300,
          margin: const EdgeInsets.only(bottom: 50),
          child: GridView.builder(
            itemCount: aboutMeItem.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1.1,
            ),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final item = aboutMeItem[index];
              return AboutMeCard(
                icon: item.icon,
                title: item.title,
                description: item.description,
              );
            },
          ),
        )
      ],
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
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      height: 200,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF242424), width: 1),
        borderRadius: BorderRadius.circular(3),
        color: const Color(0xFF1A1A1A),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Icon(icon, color: Colors.white),
          const SizedBox(height: 20),
          GradientText(
            gradient: kGradientText,
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 20),
          SelectableText(description,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: const Color(0xFF8A8A8A))),
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
