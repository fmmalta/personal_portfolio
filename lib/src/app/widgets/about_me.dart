import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/app/widgets/gradient_text.dart';
import 'package:personal_portfolio/src/constans.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
          margin: EdgeInsets.symmetric(vertical: 3.sw),
          child: GradientText(
            gradient: kGradientText,
            'Collaborate with me to create impactful results.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 3.sw,
                ),
          ),
        ),
        const CardPresentation(),
      ],
    );
  }
}

class CardPresentation extends StatelessWidget {
  const CardPresentation({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceType = getDeviceType(MediaQuery.of(context).size);
    switch (deviceType) {
      case DeviceScreenType.mobile:
        return Container(
          margin: EdgeInsets.only(bottom: 5.screenHeight),
          child: Column(
            children: aboutMeItem
                .map(
                  (item) => AboutMeCard(
                    icon: item.icon,
                    title: item.title,
                    description: item.description,
                  ),
                )
                .toList(),
          ),
        );
      default:
        return Container(
          height: 30.screenHeight,
          margin: EdgeInsets.only(bottom: 5.screenHeight),
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
        );
    }
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
      margin: EdgeInsets.symmetric(horizontal: 1.5.sw, vertical: 2.5.sh),
      padding: EdgeInsets.symmetric(horizontal: 2.sw, vertical: 4.sh),
      height: 30.sh,
      width: 45.sw,
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
