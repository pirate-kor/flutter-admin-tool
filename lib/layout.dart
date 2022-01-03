import 'package:flutter/material.dart';
import 'package:admin_tool/helpers/local_navigator.dart';
import 'package:admin_tool/helpers/responsive.dart';
import 'package:admin_tool/widgets/large_screen.dart';
import 'package:admin_tool/widgets/menu/side_menu.dart';
import 'package:admin_tool/widgets/top_navigator.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: topNavigatorBar(context, scaffoldKey),
        drawer: Drawer(
          child: SideMenu(),
        ),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: localNavigator(),
          ),
        ));
  }
}
