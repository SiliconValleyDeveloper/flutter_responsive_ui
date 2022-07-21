import 'package:fl_chart/fl_chart.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  List<String> cargoType = [
    "Grain",
    "Oil"
  ];

  List<String> year = [
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
  ];

  List<String> port = [
    "Kandla Port",
    "Nhava Sheva",
    "Mumbai Sea Port",
    "Visakhapatnam",
    "Marmagao Port" ,
   " New Mangalore Port" ,
    "Chennai Port",
    "Cochin Port"

  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  final isLoaded = false.obs;
  final  currentIndex = 0.obs;

  List<FlSpot> daylySpots = [
    FlSpot(0, 20.0),
    // FlSpot(1, 20.0),
    // FlSpot(2, 30.0),
    // FlSpot(3, 10.0),
    // FlSpot(4, 40.0),
    // FlSpot(5, 60.0),
    // FlSpot(6, 40.0),
    FlSpot(7, 80.0),
    FlSpot(8, 60.0),
    FlSpot(9, 70.0),
    FlSpot(10, 50.0),
    FlSpot(11, 150.0),
    FlSpot(12, 70.0),
    FlSpot(13, 80.0),
    FlSpot(14, 60.0),
    FlSpot(15, 70.0),
    FlSpot(16, 60.0),
    FlSpot(17, 80.0),
    FlSpot(18, 110.0),
    FlSpot(19, 130.0),
    FlSpot(20, 100.0),
    FlSpot(21, 130.0),
    FlSpot(22, 160.0),
    FlSpot(23, 190.0),
    FlSpot(24, 150.0),
    FlSpot(25, 170.0),
    FlSpot(26, 180.0),
    // FlSpot(27, 140.0),
    // FlSpot(28, 150.0),
    FlSpot(29, 150.0),
    FlSpot(30, 130.0)
  ];

  List<FlSpot> monthlySpots = [
    FlSpot(0, 110.0),
    FlSpot(1, 110.0),
    FlSpot(2, 130.0),
    FlSpot(3, 100.0),
    FlSpot(4, 130.0),
    FlSpot(5, 160.0),
    FlSpot(6, 190.0),
    FlSpot(7, 150.0),
    FlSpot(8, 170.0),
    FlSpot(9, 180.0),
    FlSpot(10, 140.0),
    FlSpot(11, 200.0),
  ];

  final currentStockIndex = 0.obs;
}
