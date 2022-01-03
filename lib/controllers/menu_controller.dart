import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:admin_tool/constants/style.dart';
import 'package:admin_tool/routes/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = overviewDisplayName.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName){
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if(!isActive(itemName))
      hoverItem.value = itemName;
  }

  isHovering(String itemName) => hoverItem.value == itemName;

  isActive(String itemName) => activeItem.value == itemName;


  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case overviewDisplayName:
        return _customIcon(Icons.grid_view_outlined, itemName);
      case apiGatewayDisplayName:
        return _customIcon(Icons.api, itemName);
      case regressionTestDisplayName:
        return _customIcon(Icons.flip_camera_ios_outlined , itemName);
//      case authenticationDisplayName:
//        return _customIcon(Icons.exit_to_app, itemName);
      default:
        return _customIcon(Icons.exit_to_app, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName){
    if(isActive(itemName))
      return Icon(icon, size: 22, color: dark);

    return Icon(icon, color: isHovering(itemName) ? dark : lightGrey,);
  }
}