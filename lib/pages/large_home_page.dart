import 'package:flutter/material.dart';

import '../models/project.dart';
import '../providers/project_provider.dart';
import '../services/project_service.dart';
import '../widgets/about_widget.dart';
import '../widgets/large_app_bar_widget.dart';
import '../widgets/project_details_widget.dart';
import '../widgets/project_widget.dart';

class LargeHomePage extends StatelessWidget {
  LargeHomePage({Key? key})
      : projects = ProjectService.projects(),
        super(key: key);
  final List<Project> projects;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: LargeAppBarWidget(),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(
                    thickness: 5,
                    color: Colors.blueGrey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Projects',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.blueGrey,
                  ),
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
                ],
              ),
            ),
          ),
          const VerticalDivider(),
          Expanded(
            flex: 7,
            child: ValueListenableBuilder(
              valueListenable: selectedIndexNotifier,
              builder: (context, int selectedIndex, _) {
                return Container(
                  color: Colors.white10,
                  margin: const EdgeInsets.only(left: 16.0),
                  child: selectedIndex < 0
                      ? const AboutWidget()
                      : ProjectDetailsWidget(
                          project: projects[selectedIndex],
                        ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
