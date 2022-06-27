import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/project.dart';
import '../utils/helpers/ui_helper.dart';

class ProjectDetailsWidget extends StatelessWidget {
  const ProjectDetailsWidget({Key? key, required this.project})
      : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(flex: 1, child: UIHelper.getLeading(project.logo)),
        Expanded(
          flex: 6,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.name,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 500,
                child: SelectableText(
                  project.description,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(height: 1.5),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => goTo(project.playStoreUrl),
                    child: Text(
                      'Play Store',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.green,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 30.0,
                    width: 2.0,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 6.0),
                    color: Colors.grey,
                  ),
                  InkWell(
                    onTap: () => goTo(project.appStoreUrl),
                    child: Text(
                      'App Store',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.green,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void goTo(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    }
  }
}
