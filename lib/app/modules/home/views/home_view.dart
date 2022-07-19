import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_responsive/app/modules/home/component/side_menu.dart';
import 'package:flutter_responsive/app/utils/responsive.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: Responsive.isDesktop(context) ? false : true,
        title: Responsive.isDesktop( context) ? Text('Desktop'): Text('Mobile and Tablet'),
        centerTitle: true,
      ),
      drawer: SideMenu(),
      body:  Responsive.isDesktop(context) ? SafeArea(
        child:
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex : 1,
                // and it takes 1/6 part of the screen
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.red,),
                ),
              ),
              Expanded(
                // It takes 5/6 part of the screen
                  flex: 5,
                  child: Column(
                    children: [
                      Expanded(
                        flex : 1,
                        // and it takes 1/6 part of the screen
                        child:  Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(color: Colors.orange.shade100,),
                                )),

                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(color: Colors.orange.shade300,),
                                )),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(color: Colors.green,),
                                )),
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(color: Colors.deepPurpleAccent.shade700,),
                                ))

                          ],
                        ),
                      ),
                      Expanded(
                        flex : 1,
                        // and it takes 1/6 part of the screen
                        child: Row(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.blue.shade100,),
                            )),

                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.green.shade300,),
                            )),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.grey,),
                            )),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.black,),
                            ))

                          ],
                        ),
                      ),
                      Expanded(
                        flex : 1,
                        // and it takes 1/6 part of the screen
                        child: Row(
                          children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.grey.shade100,),
                            )),

                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.green.shade300,),
                            )),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.orangeAccent,),
                            )),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.red.shade700,),
                            ))

                          ],
                        ),
                      ),
                      Expanded(
                        flex : 1,
                        // and it takes 1/6 part of the screen
                        child:  Row(
                          children: [


                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.green.shade300,),
                            )),

                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.green.shade900,),
                            ))

                          ],
                        ),
                      ),

                    ],
                  )
              ),
            ],
          ),
        )) : ListView(
        children: [
          listTwo(),
          listTwo(),
        ],
      )
      );

  }

  listTwo(){
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              color: Colors.black38,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              color: Colors.deepOrangeAccent.shade100,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              color: Colors.orangeAccent.shade100,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.green.shade100,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              color: Colors.orange.shade100,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: Colors.deepPurple.shade100,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              color: Colors.orangeAccent.shade100,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              color: Colors.deepPurpleAccent.shade100,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              color: Colors.orange.shade100,),
          ),
        ],
      ),
    );


  }
}
