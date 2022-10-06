import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_responsive/app/modules/home/component/left_drawer.dart';
import 'package:flutter_responsive/app/modules/home/component/middle/center.dart';
import 'package:flutter_responsive/app/modules/home/size/mobile/home_mobile.dart';
import 'package:flutter_responsive/app/modules/home/size/web/home_web.dart';
import 'package:flutter_responsive/app/utils/responsive.dart';

import 'package:get/get.dart';

import '../component/side/sideNav.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(mobile: HomeMobile(), desktop: HomeWeb()),
    );
  }
}
