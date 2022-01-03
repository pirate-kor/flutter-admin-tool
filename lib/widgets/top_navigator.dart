import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:admin_tool/constants/controllers.dart';
import 'package:admin_tool/constants/style.dart';
import 'package:admin_tool/helpers/responsive.dart';
import 'package:admin_tool/routes/routes.dart';
import 'package:admin_tool/widgets/custom_text.dart';

AppBar topNavigatorBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leadingWidth: 40,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Image.asset(
                "assets/icons/k-letter.webp",
                width: 100,
              ),
            )
          : IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                key.currentState?.openDrawer();
              }),
      title: Container(
        child: Row(
          children: [
//            Visibility(
//                visible: !ResponsiveWidget.isSmallScreen(context),
//                child: CustomText(
//                  text: "Admin",
//                  color: light,
//                  size: 20,
//                  weight: FontWeight.bold,
//                )),
            CustomText(
              text: "Admin",
              color: light,
              size: 20,
              weight: FontWeight.bold,
            ),
            Expanded(child: Container()),
            IconButton(
                icon: Icon(
                  Icons.settings,
                  color: dark,
                ),
                onPressed: () {}),
            Stack(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: dark.withOpacity(.7),
                    ),
                    onPressed: () {}),
                Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: active,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2)),
                  ),
                )
              ],
            ),
            Container(
              width: 1,
              height: 22,
              color: lightGrey,
            ),
            SizedBox(
              width: 24,
            ),
            CustomText(
              text: "andrew.z",
              color: light,
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: active.withOpacity(.5),
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(2),
                child: CircleAvatar(
                  child: Icon(
                    Icons.person_outline,
                    color: dark,
                    size: 10,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(child: Icon(Icons.exit_to_app, size: 22, color: light),
              onTap: () {
                Get.offAllNamed(authenticationPageRoute);
                menuController.changeActiveItemTo(overviewDisplayName);
              },
            ),
          ],
        ),
      ),
      iconTheme: IconThemeData(color: dark),
      elevation: 0,
      backgroundColor: Color(0xff3d4977),

    );
