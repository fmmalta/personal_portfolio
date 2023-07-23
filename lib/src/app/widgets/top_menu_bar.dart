import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/constans.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

bool isLinkedinOnHover = false;

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
        <String, String>{'subject': "Hi, I've came from your portfolio and..."},
      ),
    ),
  );
}

const String _email = 'fellipedmmalta@gmail.com';

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.sw, vertical: 1.sh),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IntrinsicWidth(
                child: ListTile(
                    onTap: _sendEmail,
                    leading: CircleAvatar(
                      radius: 2.sh,
                      backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
                      child: Icon(
                        Icons.mail,
                        size: 2.sh,
                        color: kDefaultTextColor,
                      ),
                    ),
                    title: Text(
                      _email,
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
              ),
              TextButton(
                onPressed: () async {
                  await launchUrl(
                    Uri(
                      scheme: "https",
                      host: "www.linkedin.com",
                      path: "/in/fellipedm/",
                    ),
                    mode: LaunchMode.externalApplication,
                  );
                },
                onHover: (value) {
                  setState(() {
                    isLinkedinOnHover = value;
                  });
                },
                child: Text(
                  'LinkedIn',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: isLinkedinOnHover
                            ? Colors.white
                            : kDefaultTextColor,
                      ),
                ),
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
