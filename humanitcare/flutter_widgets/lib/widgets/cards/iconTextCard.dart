import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/buttons/primaryCardButton.dart';

/// This is the stateless widget that the main application instantiates.
class IconTextCard extends StatelessWidget {
  const IconTextCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/tensiometer.png')),
              trailing: PrimaryCardButton(
                disabled: true,
                title: 'Registrarse',
                icon: Icons.chevron_right,
              ),
              title: Text('Tensión arterial'),
              subtitle: Text('-'),
            )
          ],
        ),
      ),
    );
  }
}
