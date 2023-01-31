import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_auth_ui/ColorPalette.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String buttonLabel;
  final double horizontalPadding;
  const SocialButton(
      {Key? key,
      required this.iconPath,
      required this.buttonLabel,
      this.horizontalPadding = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {},
        icon: SvgPicture.asset(iconPath,
            width: 25, color: ColorPalette.whiteColor),
        label: Text(buttonLabel,
            style:
                const TextStyle(color: ColorPalette.whiteColor, fontSize: 17)),
        style: TextButton.styleFrom(
          padding:
              EdgeInsets.symmetric(vertical: 30, horizontal: horizontalPadding),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: ColorPalette.borderColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ));
  }
}
