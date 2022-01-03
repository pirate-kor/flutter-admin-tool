import 'package:flutter/material.dart';
import 'package:admin_tool/helpers/local_navigator.dart';
import 'package:admin_tool/widgets/menu/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: SideMenu()),
        Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: localNavigator(),
            ))
      ],
    );
  }
}
