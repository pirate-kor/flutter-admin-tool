import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:admin_tool/constants/controllers.dart';
import 'package:admin_tool/helpers/responsive.dart';
import 'package:admin_tool/pages/overview/widgets/overview_large_screen.dart';
import 'package:admin_tool/pages/overview/widgets/overview_medium_screen.dart';
import 'package:admin_tool/pages/overview/widgets/overview_small_screen.dart';
import 'package:admin_tool/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(
                () => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      weight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          if(ResponsiveWidget.isLargeScreen(context) || ResponsiveWidget.isMediumScreen(context))
            if(ResponsiveWidget.isCustomSize(context))
              OverviewMediumScreen()
            else
              OverviewLargeScreen()
          else
            OverviewSmallScreen(),

          Expanded(child: Container()),
          Text(MediaQuery.of(context).size.width.toString(),
              style: TextStyle(fontSize: 39))
        ],
      ),
    );
  }
}