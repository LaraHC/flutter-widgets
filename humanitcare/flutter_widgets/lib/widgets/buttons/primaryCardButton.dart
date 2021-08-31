import 'package:flutter/material.dart';
import 'package:flutter_widgets/theme/colors.dart';

import '../../texts.dart';

class PrimaryCardButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool disabled;
  final void Function()? onPressed;
  final bool outline;

  const PrimaryCardButton({
    Key? key,
    required this.title,
    required this.icon,
    this.disabled = false,
    this.onPressed,
  })  : outline = false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        label: Icon(icon,
            color: !disabled ? HumanuiPrimaryColor : HumanuiLightGrey),
        icon: Text(title,
            style: primaryPsmall.copyWith(
              color: !disabled ? HumanuiPrimaryColor : HumanuiLightGrey,
            )),
        style: TextButton.styleFrom(
          backgroundColor: !disabled ? HumanuiPrimaryShadow : HumanuiDarkShadow,
          padding: EdgeInsets.symmetric(
            horizontal: defaultPadding,
            vertical: 1,
          ),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
        ),
        onPressed: () {});
  }
}
