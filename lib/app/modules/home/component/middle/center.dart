import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive/app/utils/responsive.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class CenterMaterial extends GetView<HomeController> {
  const CenterMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(mobile: mobile(), desktop: desktop())
    );
  }


  mobile(){
    return SingleChildScrollView(
      child: Column(

        children: [
          /// C1
          Column(
            children: [
              SizedBox(
                height: 250,
                child:  Row(
                  children: [
                    Expanded( child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: Colors.blue.shade100,),
                    )),
                    Expanded( child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: Colors.blueGrey.shade100,),
                    )),
                  ],
                ),
              ),

              SizedBox(
                height: 300,
                child:  Row(
                  children: [
                    Expanded( child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: Colors.orangeAccent.shade100,),
                    )),
                    Expanded( child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(color: Colors.orangeAccent.shade100,),
                    )),
                  ],
                ),
              ),

              SizedBox(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: Get.size.width,
                    color: Colors.redAccent.shade700,
                  ),
                ),
              ),

            ],
          ),


           SizedBox(height: 20,),
          //
          // /// C2
          SizedBox(
            height: 350,
            child: Row(
              children: [
                SizedBox(
                  width: Get.size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.lightBlue,
                      ),
                    )),
                SizedBox(
                    width: Get.size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.lightBlueAccent.shade700,
                      ),
                    )),
                Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.lightBlue.shade300,
                      ),
                    ))
              ],
            ),
          ),

          SizedBox(height: 20,),

          /// C3
          SizedBox(
            height: 450,
            child: Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.grey.shade700,),
                )),

                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.blueGrey.shade100,),
                ))
              ],
            ),
          ),

        ],
      ),
    );
  }


  desktop(){
    return SingleChildScrollView(
      child: Column(

        children: [
          /// C1
          SizedBox(
            height: 400,
            child: Row(
              children: [
                Expanded(
                  flex: 2 ,
                  child: Container(
                    width: Get.size.width * 0.2,

                    child: Column(
                      children: [
                        Expanded(
                          child:  Row(
                            children: [
                              Expanded( child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(color: Colors.blue.shade100,),
                              )),
                              Expanded( child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(color: Colors.blueGrey.shade100,),
                              )),
                            ],
                          ),
                        ),

                        Expanded(
                          child:  Row(
                            children: [
                              Expanded( child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(color: Colors.orangeAccent.shade100,),
                              )),
                              Expanded( child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(color: Colors.orangeAccent.shade100,),
                              )),
                            ],
                          ),
                        ),



                      ],
                    ),
                  ),
                ),

                Expanded(
                  flex: 3 ,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Get.size.width,
                      color: Colors.redAccent.shade700,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),

          /// C2
          SizedBox(
            height: 350,
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.lightBlue,
                      ),
                    )),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.lightBlueAccent.shade700,
                      ),
                    )),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.lightBlue.shade300,
                      ),
                    ))
              ],
            ),
          ),

          SizedBox(height: 20,),

          /// C3
          SizedBox(
            height: 450,
            child: Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.grey.shade700,),
                )),

                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.blueGrey.shade100,),
                ))
              ],
            ),
          ),

        ],
      ),
    );
  }
}
