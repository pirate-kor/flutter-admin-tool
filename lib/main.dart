import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:admin_tool/controllers/menu_controller.dart';
import 'package:admin_tool/controllers/navigation_controller.dart';
import 'package:admin_tool/pages/authentication/authentication.dart';
import 'package:admin_tool/pages/error/page_not_found.dart';
import 'package:admin_tool/routes/routes.dart';

import 'layout.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());

  runApp(const AdminTool());
}

class AdminTool extends StatelessWidget {
  const AdminTool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: authenticationPageRoute,
      unknownRoute: GetPage(
          page: () => PageNotFound(),
          name: "/error",
          transition: Transition.fadeIn,
      ),
      getPages: [
        GetPage(name: rootRoute, page: () => SiteLayout()),
        GetPage(name: authenticationPageRoute, page: () => AuthenticationPage())
      ],
      debugShowCheckedModeBanner: false,
      title: "Admin Tool",
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }),
          primaryColor: Colors.indigo),
    );
  }
}
