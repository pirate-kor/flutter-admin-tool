import 'package:flutter/material.dart';
import 'package:admin_tool/helpers/responsive.dart';
import 'package:admin_tool/widgets/menu/horizontal.dart';
import 'package:admin_tool/widgets/menu/vertical.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final GestureTapCallback onTap;

  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
