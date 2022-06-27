import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../providers/project_provider.dart';

class SmallAppBarWidget extends StatelessWidget {
  const SmallAppBarWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0.0,
      centerTitle: false,
      title: InkWell(
        onTap: () {
          selectedIndexNotifier.value = -1;
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            AppConstants.me,
            height: 50,
            fit: BoxFit.cover,
            width: 50,
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            final scaffold = Scaffold.of(context);
            if (scaffold.isEndDrawerOpen) {
              Navigator.pop(context);
              return;
            }
            scaffold.openEndDrawer();
          },
          icon: const Icon(Icons.menu_rounded),
        ),
      ],
    );
  }
}
