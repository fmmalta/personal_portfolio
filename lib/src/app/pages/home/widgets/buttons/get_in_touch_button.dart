import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/constans.dart';
import 'package:personal_portfolio/src/core/widgets/default_button.dart';
import 'package:url_launcher/url_launcher.dart';

class GetInTouchButton extends StatelessWidget {
  const GetInTouchButton({super.key});

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  Future<bool> _sendEmail() async {
    return launchUrl(
      Uri(
        scheme: 'mailto',
        path: _email,
        query: encodeQueryParameters(
          <String, String>{
            'subject': "Hi, I've came from your portfolio and..."
          },
        ),
      ),
    );
  }

  final String _email = 'fellipedmmalta@gmail.com';

  @override
  Widget build(BuildContext context) {
    return DefaultButton.icon(
      onTap: _sendEmail,
      textStyle: Theme.of(context).textTheme.bodySmall,
      icon: const CircleAvatar(
        radius: 16,
        backgroundColor: Color.fromRGBO(36, 36, 36, 1),
        child: Icon(Icons.mail, size: 20, color: kDefaultTextColor),
      ),
      label: 'Get in Touch',
    );
  }
}
