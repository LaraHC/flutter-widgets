import 'package:flutter/material.dart';
import 'package:flutter_widgets/theme/colors.dart';
import 'package:flutter_widgets/widgets/buttons/primaryButton.dart';

import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            HumanuiBlueGradient1,
            HumanuiBlueGradient2,
            HumanuiBlueGradient3
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: MainScreen(),
      ),
    );
  }
}
