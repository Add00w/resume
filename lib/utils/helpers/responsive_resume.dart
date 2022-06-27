class ResponsiveResume {
  static const largeScreenSize = 1181;
  static late double width;
  static void init({required double maxWidth}) {
    width = maxWidth;
  }

  static bool get isLargeScreen => width > largeScreenSize;
 }
