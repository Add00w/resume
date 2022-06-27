import 'package:flutter/material.dart'
    show
        BuildContext,
        InkWell,
        Key,
        MaterialColor,
        StatelessWidget,
        VoidCallback,
        Widget;
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    Key? key,
    required this.onTap,
    required this.logo,
    this.color,
  }) : super(key: key);
  final VoidCallback onTap;
  final String logo;
  final MaterialColor? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SvgPicture.asset(
        logo,
        height: 30,
        width: 30,
        color: color,
      ),
    );
  }
}
