import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        Key,
        MainAxisAlignment,
        Row,
        SizedBox,
        StatelessWidget,
        Widget;
import 'package:url_launcher/url_launcher.dart' show launch;

import './social_media_widget.dart';
import '../constants/app_constants.dart';

class FooterSocialMediaWidget extends StatelessWidget {
  const FooterSocialMediaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaWidget(
          onTap: () {
            launch(AppConstants.githubProfile);
          },
          logo: AppConstants.githubLogo,
          color: Colors.blue,
        ),
        const SizedBox(width: 10),
        SocialMediaWidget(
          onTap: () {
            launch(AppConstants.linkedInProfile);
          },
          logo: AppConstants.linkedInLogo,
        ),
        const SizedBox(width: 10),
        SocialMediaWidget(
          onTap: () {
            launch(AppConstants.twitterProfile);
          },
          logo: AppConstants.twitterLogo,
        ),
      ],
    );
  }
}
