import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resume/constants/app_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(99),
                child: Image.asset(
                  'assets/images/me.jpg',
                  height: 100,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hi all 👋 I'm Abdullahi Addow",
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.red),
              ),
              Text(
                'I am Flutter developer',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black),
              ),
              SizedBox(
                width: 400,
                child: SelectableText(
                  'I have being developing apps with flutter for a while and i\'m experienced with flutter related technologies like firebase.',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(height: 1.5, fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10),
              const Text('Contact me 👇'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      launch(AppConstants.githubProfile);
                    },
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: SvgPicture.asset(
                        'assets/images/github.svg',
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      launch(AppConstants.linkedInProfile);
                    },
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: SvgPicture.asset('assets/images/linkedin.svg'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      launch(AppConstants.twitterProfile);
                    },
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: SvgPicture.asset(
                        'assets/images/twitter.svg',
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
