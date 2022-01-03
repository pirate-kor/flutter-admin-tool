import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:admin_tool/constants/controllers.dart';
import 'package:admin_tool/constants/style.dart';
import 'package:admin_tool/widgets/custom_text.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final GestureTapCallback onTap;
  const VerticalMenuItem({ Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
          color: menuController.isHovering(itemName)
              ? dark.withOpacity(.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Container(
                  width: 3,
                  height: 100,
                  color: dark,
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: menuController.returnIconFor(itemName),
                      ),
                      if (!menuController.isActive(itemName))
                        Flexible(
                            child: CustomText(
                              text: itemName,
                              color: menuController.isHovering(itemName)
                                  ? dark
                                  : lightGrey,
                            ))
                      else
                        Flexible(
                            child: CustomText(
                              text: itemName,
                              color: dark,
                              size: 18,
                              weight: FontWeight.bold,
                            ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}