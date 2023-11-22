import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/core/widgets/default_button.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedinButton extends StatelessWidget {
  const LinkedinButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      label: 'LinkedIn',
      textStyle: Theme.of(context).textTheme.bodySmall,
      onTap: () async {
        await launchUrl(
          Uri(
            scheme: "https",
            host: "www.linkedin.com",
            path: "/in/fellipedm/",
          ),
          mode: LaunchMode.externalApplication,
        );
      },
    );
  }
}
