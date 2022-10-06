// import 'package:auto_animated/auto_animated.dart';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_responsive/app/modules/home/controllers/home_controller.dart';
// import 'package:flutter_responsive/app/utils/custom_theme.dart';
// import 'package:flutter_responsive/app/utils/responsive.dart';
// import 'package:flutter_responsive/app/widgets/animation.dart';
// import 'package:flutter_responsive/app/widgets/color.dart';
// import 'package:get/get.dart';
//
// class LeftSideMenu extends GetView<HomeController> {
//   const LeftSideMenu({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(
//
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(flex: 1, child: Get.isDarkMode ?Image.network("https://in.pinterest.com/fde52eb0-3e1c-43bf-8c0f-21b48d0de62b.png"): Image.network("https://i.pinimg.com/564x/28/a5/f4/28a5f4ed30eeeee0e2c816610ae29c57.jpg")),
//                   Expanded(flex: 2,child:  AutoSizeText("Anchor Beach Cargo", style: headingStyleBold,))
//                 ],
//               ),
//               ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Cargo Type', style: titleStyleBold,),
//             ),
//             SizedBox(
//               child: GridView.builder(
//                 shrinkWrap: true,
//                 itemCount:controller.cargoType.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount:  3,
//                     mainAxisSpacing: 8,
//                     crossAxisSpacing: 8,
//
//                 ),
//                 itemBuilder: (context,index,) {
//                   return GestureDetector(
//                     onTap:(){
//
//                     },
//                     child: index == 0 ?  Card(
//                    color: Colors.blue.shade100,
//
//                       child: Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Center(child: AutoSizeText(controller.cargoType[index],style: titleStyle)),
//                         ),
//                       ),
//                     ) :  Expanded(
//                       child: Card(
//
//
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Center(child: AutoSizeText(controller.cargoType[index],style: titleStyle)),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Selected Year', style: titleStyleBold,),
//             ),
//             SizedBox(
//               child: GridView.builder(
//
//                 shrinkWrap: true,
//                 itemCount:controller.year.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount:   3 ,
//                   crossAxisSpacing: 0,
//                   mainAxisExtent: 100
//
//
//
//
//
//
//
//                 ),
//                 itemBuilder: (context,index,) {
//                   return GestureDetector(
//                     onTap:(){
//
//                     },
//                     child: index==5 ? Row(
//                       children: [
//                         Expanded(
//                           child: Card(
//                             color: Colors.blue.shade100,
//
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Center(child: AutoSizeText(controller.year[index],style: titleStyle)),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ) :
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Card(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Center(child: AutoSizeText(controller.year[index],style: titleStyle)),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Port', style: titleStyleBold,),
//             ),
//             SizedBox(
//               child: GridView.builder(
//
//                 shrinkWrap: true,
//                 physics: const ScrollPhysics(),
//                 itemCount:controller.port.length,
//                 scrollDirection: Axis.vertical,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2 ,
//                   mainAxisSpacing: 0,
//                   mainAxisExtent: 100
//                 ),
//                 itemBuilder: (context,index,) {
//                   return index == 2 ?Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Card(
//                         color: Colors.blue.shade100,
//                         child: AutoSizeText(controller.port[index],style: titleStyle)),
//                   ): Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: AutoSizeText(controller.port[index],style: titleStyle),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(
//               child: Get.isDarkMode ? Image.network('https://i.pinimg.com/564x/46/e7/df/46e7df440cd831a2d1e553e998c3a499.jpg'): Image.network('https://i.pinimg.com/564x/34/2d/8c/342d8c205e31d162dedc7b8623db2c84.jpg', fit: BoxFit.fill,),
//             )
//                        ],
//         ),
//       ),
//
//     );
//   }
// }
