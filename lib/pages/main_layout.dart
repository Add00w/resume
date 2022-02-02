import 'package:flutter/material.dart';
import 'package:resume/pages/large_home_page.dart';
import 'package:resume/pages/medium_home_page.dart';
import 'package:resume/pages/small_home_page.dart';
import 'package:resume/utils/helpers/responsive_resume.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        ResponsiveResume.init(maxWidth: constraints.maxWidth);
        if (ResponsiveResume.isLargeScreen) {
          return LargeHomePage();
        }

        if (ResponsiveResume.isMediumScreen) {
          return const MediumHomePage();
        }

        return const SmallHomePage();
      },
    );
  }
}
