import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UIHelper {
  static Widget getLeading(String logo) {
    if (logo.contains('svg')) {
      return SizedBox(
        height: 40,
        width: 40,
        child: SvgPicture.asset(
          logo,
        ),
      );
    }
    return SizedBox(
      height: 40,
      width: 40,
      child: Image.asset(
        logo,
        cacheHeight: 40,
        cacheWidth: 40,
      ),
    );
  }
}
