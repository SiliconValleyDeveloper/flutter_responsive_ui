import 'package:flutter/material.dart';
import 'package:flutter_responsive/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../../../../utils/responsive.dart';
import '../../component/middle/center.dart';
import '../../component/side/sideNav.dart';

class HomeMobile extends GetView<HomeController> {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: context.theme.backgroundColor,

        appBar: AppBar(
          automaticallyImplyLeading:  controller.sideNav.value == true ? false : true, //
          iconTheme: IconThemeData(color: Get.isDarkMode ? Colors.white : Colors.black87),
          // leading: Builder(
          //   builder: (BuildContext context) {
          //     return IconButton(
          //       icon: const Icon(
          //         Icons.calendar_view_day_sharp,
          //        // Change Custom Drawer Icon Color
          //       ),
          //       onPressed: () {
          //       controller.sideNav.value ==false ?   Scaffold.of(context).openDrawer() : Scaffold.of(context).openEndDrawer() ;
          //       },
          //       tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          //     );
          //   },
          // ),
          backgroundColor: context.theme.backgroundColor,


        ),
        drawer: controller.sideNav.value == false ? Drawer(child: SideNav(),): SizedBox.shrink(),
        endDrawer: controller.sideNav.value == true ? Drawer(child: SideNav(),):SizedBox.shrink(),
        body:  Container(
          child: CenterMaterial(),
          color: Colors.red,
        ));
  }
}
