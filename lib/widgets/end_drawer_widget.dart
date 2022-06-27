import 'package:flutter/material.dart';

import './footer_social_media_widget.dart';
import './project_widget.dart';
import '../models/project.dart';
import '../providers/project_provider.dart';
import '../services/project_service.dart';

class EndDrawerWidget extends StatelessWidget {
  EndDrawerWidget({Key? key})
      : projects = ProjectService.projects(),
        super(key: key);
  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Column(
          children: [
            ListView.builder(
              itemCount: projects.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ValueListenableBuilder(
                    valueListenable: selectedIndexNotifier,
                    builder: (_, int selectedIndex, __) {
                      return ProjectWidget(
                        project: projects[index],
                        selected: index == selectedIndex,
                        callback: () {
                          selectedIndexNotifier.value = index;
                        },
                      );
                    });
              },
            ),
            const Spacer(),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ValueListenableBuilder(
                    valueListenable: selectedIndexNotifier,
                    builder: (context, int selectedIndex, _) {
                      return InkWell(
                        onTap: () {
                          selectedIndexNotifier.value = -1;
                        },
                        child: Text(
                          'About',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: selectedIndex < 0 //
                                        ? Colors.blue
                                        : Colors.black,
                                  ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 20),
                  const FooterSocialMediaWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
