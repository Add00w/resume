import 'package:flutter/material.dart'
    show
        BuildContext,
        Colors,
        EdgeInsets,
        Key,
        ListTile,
        StatelessWidget,
        Text,
        Theme,
        VoidCallback,
        Widget;

import '../models/project.dart';
import '../utils/helpers/ui_helper.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    Key? key,
    required this.project,
    required this.selected,
    required this.callback,
  }) : super(key: key);
  final Project project;
  final bool selected;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: callback,
      leading: UIHelper.getLeading(project.logo),
      contentPadding: const EdgeInsets.only(left: 16.0),
      title: Text(
        project.name,
        style: Theme.of(context).textTheme.headline6!.copyWith(
              fontSize: 18,
              color: selected //
                  ? Colors.blue
                  : Colors.black,
            ),
      ),
      selected: selected,
    );
  }
}
