import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import 'package:url_launcher/url_launcher.dart';

class DefaultMarkdown extends StatelessWidget {
  final String data;
  const DefaultMarkdown({required this.data, super.key});

  @override
  Widget build(BuildContext context) {
    return Markdown(
      shrinkWrap: true,
      selectable: true,
      softLineBreak: true,
      onTapLink: (text, href, title) async {
        final url = Uri.parse(href!);
        await launchUrl(
          Uri(scheme: url.scheme, host: url.host, path: url.path),
          mode: LaunchMode.externalApplication,
        );
      },
      data: data,
      styleSheet: MarkdownStyleSheet(
        p: Theme.of(context).textTheme.bodySmall,
        h1: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: Colors.white),
        h2: Theme.of(context).textTheme.bodyMedium,
        code: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.white,
              backgroundColor: Colors.black,
            ),
        codeblockDecoration: const BoxDecoration(color: Colors.black),
        tableHead: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.white,
            ),
        tableBody: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
