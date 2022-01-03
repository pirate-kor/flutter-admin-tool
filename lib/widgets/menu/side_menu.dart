import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:admin_tool/constants/controllers.dart';
import 'package:admin_tool/constants/style.dart';
import 'package:admin_tool/helpers/responsive.dart';
import 'package:admin_tool/routes/routes.dart';
import 'package:admin_tool/widgets/custom_text.dart';
import 'package:admin_tool/widgets/menu/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
//                    Image.asset("assets/icons/k-letter.webp", scale: 1.0,),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/k-letter.webp", scale: 5.0,),
                    ),
                    Flexible(
                      child: CustomText(
                        text: "Admin Tool",
                        size: 20,
                        weight: FontWeight.bold,
                        color: dark,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Divider(color: light.withOpacity(.2),),

            Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItemRoutes
                  .map((item) =>
                  SideMenuItem(
                      itemName: item.name,
                      onTap: () {
                        if (item.route == authenticationPageRoute) {
                          Get.offAllNamed(authenticationPageRoute);
                          menuController.changeActiveItemTo(overviewDisplayName);
                        }
                        if (!menuController.isActive(item.name)) {
                          menuController.changeActiveItemTo(item.name);
                          if (ResponsiveWidget.isSmallScreen(context)) {
                            Get.back();
                          }
//                          Get.offAllNamed(item.route);
                        navigationController.navigateTo(item.route);
                        }
                      }))
                  .toList(),
            )
        ],
      ),
    );
  }
}