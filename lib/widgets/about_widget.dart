import 'package:flutter/material.dart';

import './footer_social_media_widget.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Hi 👋 I'm Abdullahi Addow",
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Colors.red),
        ),
        Text(
          'Flutter developer',
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: Colors.black),
        ),
        SizedBox(
          width: 500,
          child: SelectableText(
            'I have been developing apps with Flutter for a while, and I\'m experienced with other technologies like Firebase, Sentry, Git, notifications, deep-links, online payments, ads, etc.',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(height: 1.5, fontSize: 18.0),
          ),
        ),
        const SizedBox(height: 8.0),
        const Spacer(),
        const Divider(),
        const FooterSocialMediaWidget(),
        const SizedBox(height: 8.0),
      ],
    );
  }
}
