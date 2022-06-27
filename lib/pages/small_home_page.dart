import 'package:flutter/material.dart';
import 'package:resume/widgets/about_widget.dart';

import '../models/project.dart';
import '../providers/project_provider.dart';
import '../services/project_service.dart';
import '../widgets/end_drawer_widget.dart';
import '../widgets/project_details_widget.dart';
import '../widgets/small_app_bar_widget.dart';

class SmallHomePage extends StatelessWidget {
  SmallHomePage({Key? key})
      : projects = ProjectService.projects(),
        super(key: key);
  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SmallAppBarWidget(),
      ),
      endDrawer: EndDrawerWidget(),
      body: ValueListenableBuilder(
        valueListenable: selectedIndexNotifier,
        builder: (_, int selectedIndex, __) {
          Navigator.maybePop(context);
          if (selectedIndex < 0) return const AboutWidget();
          return ProjectDetailsWidget(
            project: projects[selectedIndex],
          );
        },
      ),
    );
  }
}
