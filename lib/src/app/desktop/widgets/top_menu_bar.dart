import 'package:flutter/material.dart';
import 'package:personal_portfolio/src/constans.dart';
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

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IntrinsicWidth(
                child: ListTile(
                    onTap: () {
                      launchUrl(
                        Uri(
                          scheme: 'mailto',
                          path: 'fellipedmmalta@gmail.com',
                          query: encodeQueryParameters(
                            <String, String>{
                              'subject':
                                  "Hi, I've came from your portfolio and..."
                            },
                          ),
                        ),
                      );
                    },
                    leading: const CircleAvatar(
                      backgroundColor: Color.fromRGBO(36, 36, 36, 1),
                      child: Icon(
                        Icons.mail,
                        size: 16,
                        color: kDefaultTextColor,
                      ),
                    ),
                    title: Text(
                      'fellipedmmalta@gmail.com',
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
                      color:
                          isLinkedinOnHover ? Colors.white : kDefaultTextColor),
                ),
              )
            ],
          ),
          const Divider(color: Colors.white10),
        ],
      ),
    );
  }
}
