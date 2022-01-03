import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:admin_tool/constants/controllers.dart';
import 'package:admin_tool/routes/router.dart';
import 'package:admin_tool/routes/routes.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );
