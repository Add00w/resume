class ResponsiveResume {
  static const largeScreenSize = 1280;
  static const mediumScreenSize = 601;
  static late double width;
  static void init({required double maxWidth}) {
    width = maxWidth;
  }

  static bool get isLargeScreen => width > largeScreenSize;
  static bool get isMediumScreen => (width >= mediumScreenSize);

  static bool get isSmallScreen => width < mediumScreenSize;
}
