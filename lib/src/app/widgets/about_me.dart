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
          width: MediaQuery.of(context).size.width / 2,
          margin: EdgeInsets.symmetric(vertical: 3.sw),
          child: GradientText(
            gradient: kGradientText,
            'Collaborate with me to create impactful results.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
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
    var deviceType = getDeviceType(
        MediaQuery.of(context).size,
        const ScreenBreakpoints(
          desktop: 600,
          tablet: 600,
          watch: 200,
        ));
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
          margin: EdgeInsets.only(bottom: 5.screenHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
      padding: EdgeInsets.all(2.sh),
      decoration: BoxDecoration(
        border: Border.all(color: kAccentColor, width: 1),
        borderRadius: BorderRadius.circular(3),
        color: const Color(0xFF1A1A1A),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(icon, color: Colors.white),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.sh),
            child: GradientText(
              gradient: kGradientText,
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          SizedBox(
            width: 60.sw,
            child: SelectableText(description,
                style: Theme.of(context).textTheme.bodySmall),
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
