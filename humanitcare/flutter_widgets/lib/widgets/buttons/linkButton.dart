import 'package:flutter/material.dart';
import 'package:flutter_widgets/theme/colors.dart';
import 'package:flutter_widgets/widgets/buttons/primaryButton.dart';

import '../../texts.dart';

class LinkButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool disabled;
  final void Function()? onPressed;
  final bool outline;

  const LinkButton({
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
        label: Text(title,
            style: primaryPRegular.copyWith(
              color: !disabled ? HumanuiPrimaryColor : HumanuiLightGrey,
            )),
        icon: Icon(icon,
            color: !disabled ? HumanuiPrimaryColor : HumanuiLightGrey),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: defaultPadding * 1.5,
            vertical: defaultPadding,
          ),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
        ),
        onPressed: () {});
  }
}
