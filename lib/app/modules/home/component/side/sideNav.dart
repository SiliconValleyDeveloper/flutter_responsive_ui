import 'package:flutter/material.dart';
import 'package:flutter_responsive/app/utils/custom_theme.dart';
import 'package:flutter_responsive/app/utils/theme_services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SideNav extends GetView {
  const SideNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            width: double.infinity,
            height: 150,
            child: SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex:2,
                        child: Image.network('https://img.i-scmp.com/cdn-cgi/image/fit=contain,width=425,format=auto/sites/default/files/styles/768x768/public/d8/images/methode/2019/05/03/40b7c63c-59a2-11e9-bbcc-84176f6dd1e7_image_hires_134058.jpg?itok=6kpUNFj4&v=1556862065')),
                    Expanded(
                        flex:4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,

                         children: [
                           Text('Henry Cavill', style: subHeadingStyle,),
                           Icon(Icons.arrow_drop_down_sharp, color: Get.isDarkMode ? Colors.white70 : Colors.black,)
                         ],
                       ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text('Designer', style: subTitleStyleFade,),
                            SizedBox(width: 10,),
                            GestureDetector(

                                onTap: (){
                                  ThemeService().switchTheme();
                                },
                                child: Get.isDarkMode ? Icon(Icons.bedtime_rounded,color: Colors.white, size: 20,)  : Icon(Icons.light_mode,color: Colors.black,size: 22,))

                          ],
                        ),

                      ],
                    ))
                  ],
                ),
              ),
            ),
          ),
          /// C2
          SizedBox(
            width: double.infinity,

            child:  Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.contact_page_outlined, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('Pages', style: titleStyleFade,),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down_rounded,  color: Get.isDarkMode ? Colors.white70 : Colors.black,),
                  SizedBox(width: 10,),

                ],
              ),
            ),

          ),

          /// C3
          SizedBox(
            width: double.infinity,

            child:  Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.account_circle, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('Profile', style: titleStyleFade,),
                    ],
                  ),


                ],
              ),
            ),
            ),

          /// C5
          SizedBox(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.content_paste_go, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('Invoice', style: titleStyleFade,),
                    ],
                  ),


                ],
              ),
            ),
           ),

          /// C6
          SizedBox(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.menu, color: Get.isDarkMode ? Colors.white70 : Colors.black , size: 22,),
                      SizedBox(width: 10,),
                      Text('Task', style: titleStyleFade,),
                    ],
                  ),
                  Spacer(),
                 Container(
                   color: Colors.lightBlue.shade700,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('PRO', style: semiParagraphStyle,),
                   ),
                 ),
                  SizedBox(width: 10,),

                ],
              ),
            ),
          ),

          ///C7
          SizedBox(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('Calendar', style: titleStyleFade,),
                    ],
                  ),


                ],
              ),
            ),
           ),
          SizedBox(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.verified_outlined, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('Auth', style: titleStyleFade,),
                    ],
                  ),


                ],
              ),
            ),
           ),


          /// SECOND
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 5, 5, 18),
            child: Text('Components', style: titleStyle,),
          ),

          /// C2
          SizedBox(
            width: double.infinity,

            child:  Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.cases_outlined, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('UI Element', style: titleStyleFade,),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down_rounded,  color: Get.isDarkMode ? Colors.white70 : Colors.black,),
                  SizedBox(width: 10,),

                ],
              ),
            ),

          ),

          /// C3
          SizedBox(
            width: double.infinity,

            child:  Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.coffee, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('Profile', style: titleStyleFade,),
                    ],
                  ),


                ],
              ),
            ),
          ),

          /// C5
          SizedBox(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.content_paste_go_outlined, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('Forms', style: titleStyleFade,),
                    ],
                  ),


                ],
              ),
            ),
          ),

          /// C6
          SizedBox(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.table_rows, color: Get.isDarkMode ? Colors.white70 : Colors.black , size: 22,),
                      SizedBox(width: 10,),
                      Text('Tables', style: titleStyleFade,),
                    ],
                  ),
                  Spacer(),
                  Container(
                    color: Colors.lightBlue.shade700,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('PRO', style: semiParagraphStyle,),
                    ),
                  ),
                  SizedBox(width: 10,),

                ],
              ),
            ),
          ),


          /// THIRD
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 5, 5, 18),
            child: Text('Plugin & Addon', style: titleStyleFade,),
          ),

          /// C2
          SizedBox(
            width: double.infinity,

            child:  Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.sticky_note_2, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('Pages', style: titleStyleFade,),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.arrow_drop_down_rounded,  color: Get.isDarkMode ? Colors.white70 : Colors.black,),
                  SizedBox(width: 10,),

                ],
              ),
            ),

          ),

          /// C3
          SizedBox(
            width: double.infinity,

            child:  Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.table_rows_sharp, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('DataTable', style: titleStyleFade,),
                    ],
                  ),


                ],
              ),
            ),
          ),

          /// C5
          SizedBox(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.bar_chart, color: Get.isDarkMode ? Colors.white70 : Colors.black, size: 22,),
                      SizedBox(width: 10,),
                      Text('Charts', style: titleStyleFade,),
                    ],
                  ),


                ],
              ),
            ),
          ),

          /// C6
          SizedBox(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.map_outlined, color: Get.isDarkMode ? Colors.white70 : Colors.black , size: 22,),
                      SizedBox(width: 10,),
                      Text('Maps', style: titleStyleFade,),
                    ],
                  ),
                  Spacer(),
                  Container(
                    color: Colors.lightBlue.shade700,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('PRO', style: semiParagraphStyle,),
                    ),
                  ),
                  SizedBox(width: 10,),

                ],
              ),
            ),
          ),

          SizedBox(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 10, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Row(
                    children: [
                      Icon(Icons.turn_sharp_left, color: Get.isDarkMode ? Colors.white70 : Colors.black , size: 22,),
                      SizedBox(width: 10,),
                      Text('Multi Level', style: titleStyleFade,),
                    ],
                  ),
                  Spacer(),
                  Container(
                    color: Colors.lightBlue.shade700,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Pro', style: semiParagraphStyle,),
                    ),
                  ),
                  SizedBox(width: 10,),

                ],
              ),
            ),
          ),












        ],
      ),
    );
  }
}
