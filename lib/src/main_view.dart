import 'package:flutter/material.dart';
import 'package:mobile_app_interview/view/gameView.dart';

class MainView extends StatelessWidget {
  const MainView({
    super.key,
  });

  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return GameView();
  }
}
