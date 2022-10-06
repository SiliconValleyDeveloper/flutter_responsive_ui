// import 'package:animate_do/animate_do.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_responsive/app/modules/home/controllers/home_controller.dart';
// import 'package:flutter_responsive/app/utils/custom_theme.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class TotalCargoTonnage extends GetView<HomeController> {
//   final stockController = Get.put(HomeController());
//    TotalCargoTonnage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Obx(() {
//           return Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: <Widget>[
//                 Expanded(
//                   flex: 2,
//
//                     child: LineChart(
//                       mainData(),
//                       swapAnimationCurve: Curves.easeInOutCubic,
//
//                       swapAnimationDuration: Duration(milliseconds: 1000),
//                     )
//                 ),
//                 AnimatedContainer(
//                     duration: Duration(milliseconds: 500),
//                   //  height: MediaQuery.of(context).size.height * 0.3,
//                     padding: EdgeInsets.all(20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//
//                             stockController.currentStockIndex.value = 0;
//
//                           },
//                           child: Container(
//                             padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color:  stockController.currentStockIndex.value  == 0 ? Color(0xff161b22) : Color(0xff161b22).withOpacity(0.0),
//                             ),
//                             child: Text("D", style: TextStyle(color:  stockController.currentStockIndex.value  == 0 ? Colors.blueGrey.shade200 : Colors.blueGrey),),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             stockController.currentStockIndex.value =1;
//                           },
//                           child: AnimatedContainer(
//                             duration: Duration(milliseconds: 500),
//                             padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color:  stockController.currentStockIndex.value  == 1 ? Color(0xff161b22) : Color(0xff161b22).withOpacity(0.0),
//                             ),
//                             child: Text("M", style: TextStyle(color:  stockController.currentStockIndex.value  == 1 ? Colors.blueGrey.shade200 : Colors.blueGrey, fontSize: 20),),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             stockController.currentStockIndex.value  = 2;
//                           },
//                           child: AnimatedContainer(
//                             duration: Duration(milliseconds: 500),
//                             padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               color:  stockController.currentStockIndex.value  == 2 ? Color(0xff161b22) : Color(0xff161b22).withOpacity(0.0),
//                             ),
//                             child: Text("Y", style: TextStyle(color:  stockController.currentStockIndex.value  == 2 ? Colors.blueGrey.shade200 : Colors.blueGrey, fontSize: 20),),
//                           ),
//                         ),
//                       ],
//                     )
//                 ),
//               ]
//           );
//         })
//     );
//   }
//
//   // Charts Data
//
//   final isLoaded = false.obs;
//   final  currentIndex = 0.obs;
//
//
//   List<Color> gradientColors = [
//     const Color(0xffe68823),
//     const Color(0xffe68823),
//   ];
//
//   LineChartData mainData() {
//     return LineChartData(
//       borderData: FlBorderData(
//         show: true,
//       ),
//       gridData: FlGridData(
//           show: false,
//           horizontalInterval: 1.6,
//           drawVerticalLine: false
//       ),
//       titlesData: FlTitlesData(
//         show: false,
//         rightTitles: SideTitles(showTitles: false),
//         topTitles: SideTitles(showTitles: false),
//         bottomTitles: SideTitles(
//           showTitles: true,
//           reservedSize: 22,
//           interval: 1,
//           getTextStyles: (context, value) => const TextStyle(
//               color: Color(0xff68737d),
//               fontWeight: FontWeight.bold,
//               fontSize: 8
//           ),
//           getTitles: (value) {
//             switch (value.toInt()) {
//               case 1:
//                 return 'JAN';
//               case 2:
//                 return 'FEB';
//               case 3:
//                 return 'MAR';
//               case 4:
//                 return 'APR';
//               case 5:
//                 return 'MAY';
//               case 6:
//                 return 'JUN';
//               case 7:
//                 return 'JUL';
//               case 8:
//                 return 'AUG';
//               case 9:
//                 return 'SEP';
//               case 10:
//                 return 'OCT';
//               case 11:
//                 return 'NOV';
//               case 12:
//                 return 'DEC';
//             }
//             return '';
//           },
//           margin: 10,
//         ),
//         leftTitles: SideTitles(
//           showTitles: true,
//           interval: 1,
//           getTextStyles: (context, value) => const TextStyle(
//             color: Color(0xff67727d),
//             fontWeight: FontWeight.bold,
//             fontSize: 12,
//           ),
//
//           getTitles: (value) {
//             switch (value.toInt()) {
//               case 1:
//                 return '10k';
//               case 3:
//                 return '30k';
//               case 5:
//                 return '50k';
//             }
//             return '';
//           },
//         ),
//       ),
//       minX: 0,
//       maxX:  stockController.currentStockIndex.value  == 0 ? stockController.daylySpots.length-1.toDouble() :  stockController.currentStockIndex.value  == 1 ? stockController.monthlySpots.length-1.toDouble() :  stockController.currentStockIndex.value  == 2 ? stockController.daylySpots.length-20.toDouble() : stockController.daylySpots.length.toDouble(),
//       minY: 0,
//       maxY: 200,
//       lineTouchData: LineTouchData(
//         getTouchedSpotIndicator: (LineChartBarData barData, List<int> spotIndexes) {
//           return spotIndexes.map((index) {
//             return TouchedSpotIndicatorData(
//               FlLine(
//                 color: Colors.white.withOpacity(0.1),
//                 strokeWidth: 2,
//                 dashArray: [3, 3],
//               ),
//               FlDotData(
//                 show: false,
//                 getDotPainter: (spot, percent, barData, index) =>
//                     FlDotCirclePainter(
//                       radius: 8,
//                       color: [
//                         Colors.black,
//                         Colors.black,
//                       ][index],
//                       strokeWidth: 2,
//                       strokeColor: Colors.black,
//                     ),
//               ),
//             );
//           }).toList();
//         },
//         enabled: true,
//         touchTooltipData: LineTouchTooltipData(
//           tooltipPadding: const EdgeInsets.all(8),
//           tooltipBgColor: Color(0xff2e3747).withOpacity(0.8),
//           getTooltipItems: (touchedSpots) {
//             return touchedSpots.map((touchedSpot) {
//               return LineTooltipItem(
//                 '\$${touchedSpot.y.round()}.00',
//                 const TextStyle(color: Colors.white, fontSize: 12.0),
//
//               );
//             }).toList();
//           },
//         ),
//         handleBuiltInTouches: true,
//       ),
//       lineBarsData: [
//         LineChartBarData(
//           spots:  stockController.currentStockIndex.value  == 0 ? stockController.daylySpots :stockController.currentIndex.value == 1 ? stockController.monthlySpots : stockController.daylySpots,
//           isCurved: true,
//           colors: gradientColors,
//           barWidth: 2,
//           dotData: FlDotData(
//             show: true,
//           ),
//           belowBarData: BarAreaData(
//               show: true,
//               gradientFrom: Offset(0, 0),
//               gradientTo: Offset(0, 1),
//               colors: [
//                 Color(0xffe68823).withOpacity(0.1),
//                 Color(0xffe68823).withOpacity(0),
//               ]
//           ),
//         )
//       ],
//     );
//   }
// }