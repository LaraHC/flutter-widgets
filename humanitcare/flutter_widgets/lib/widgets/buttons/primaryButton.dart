import 'package:flutter/material.dart';
import 'package:flutter_widgets/theme/colors.dart';

import '../../texts.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool disabled;
  final void Function()? onPressed;
  final bool outline;

  const PrimaryButton({
    Key? key,
    required this.title,
    required this.icon,
    this.disabled = false,
    this.onPressed,
  })  : outline = false,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF77D7D8),
                    Color(0xFF38C4CD),
                    Color(0xFF04BBC7),
                  ],
                ),
              ),
            ),
          ),
          TextButton.icon(
              icon: Icon(icon,
                  color: !disabled ? HumanuiLight : HumanuiLightGrey),
              label: Text(title,
                  style: primaryPRegular.copyWith(
                    color: !disabled ? HumanuiLight : HumanuiLightGrey,
                  )),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
