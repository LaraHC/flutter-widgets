import 'package:flutter/material.dart';
import 'package:flutter_widgets/texts.dart';
import 'package:flutter_widgets/theme/colors.dart';
import 'package:flutter_widgets/widgets/buttons/linkButton.dart';
import 'package:flutter_widgets/widgets/buttons/primaryButton.dart';
import 'package:flutter_widgets/widgets/cards/iconTextCard.dart';

import 'widgets/buttons/primaryCardButton.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: new Container(
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(50.0), color: HumanuiLight),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.75,
        child: Column(
          children: [
            SizedBox(height: profilePadding),
            Center(),
            IconTextCard(),
            PrimaryButton(icon: Icons.add, title: 'text'),
            LinkButton(title: 'text', icon: Icons.add),
            PrimaryCardButton(title: 'text', icon: Icons.add)
          ],
        ),
      ),
    );
  }
}
