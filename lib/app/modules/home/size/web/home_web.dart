import 'package:flutter/material.dart';
import 'package:flutter_responsive/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../../../utils/responsive.dart';
import '../../component/middle/center.dart';
import '../../component/side/sideNav.dart';

class HomeWeb extends GetView<HomeController> {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: context.theme.backgroundColor,
        body: Obx(() {
          return Row(
            children: [
              controller.sideNav.value == false
                  ? Responsive.isDesktop(context)
                  ? Expanded(flex: 1, child: SideNav())
                  : SizedBox.shrink()
                  : SizedBox.shrink(),
              Expanded(
                  flex: 6,
                  child: GestureDetector(
                      onTap: () {
                        if (controller.sideNav.value == true) {
                          controller.sideNav.value = false;
                        } else if (controller.sideNav.value == false) {
                          controller.sideNav.value = true;
                        }
                      },
                      child: Container(
                        child: CenterMaterial(),
                        color: Colors.red,
                      ))),
              controller.sideNav.value == true
                  ? Responsive.isDesktop(context)
                  ? Expanded(flex: 1, child: SideNav())
                  : SizedBox.shrink()
                  : SizedBox.shrink(),
            ],
          );
        }));
  }
}
