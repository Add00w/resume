import 'package:flutter/material.dart';

class ProjectProvider extends ChangeNotifier {
  static void selectProject(int index) {
    selectedIndexNotifier.value = index;
  }

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(-1);
}
