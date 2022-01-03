const rootRoute = "/main";

const overviewDisplayName = "Overview";
const overviewPageRoute = "/overview";

const apiGatewayDisplayName = "Api-gateway";
const apiGatewayPageRoute = "/apigateway";

const regressionTestDisplayName = "Regression";
const regressionTestPageRoute = "/regression";

const authenticationDisplayName = "Auth";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(overviewDisplayName, overviewPageRoute),
  MenuItem(apiGatewayDisplayName, apiGatewayPageRoute),
  MenuItem(regressionTestDisplayName, regressionTestPageRoute),
];