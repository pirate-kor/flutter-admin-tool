import 'package:flutter/material.dart';
import 'package:admin_tool/pages/api/api_gateway.dart';
import 'package:admin_tool/pages/error/page_not_found.dart';
import 'package:admin_tool/pages/overview/overview.dart';
import 'package:admin_tool/pages/regression/regression_test.dart';
import 'package:admin_tool/routes/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverViewPage());
    case apiGatewayPageRoute:
      return _getPageRoute(ApiGatewayPage());
    case regressionTestPageRoute:
      return _getPageRoute(RegressionTestPage());
    default:
      return _getPageRoute(PageNotFound());

  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}