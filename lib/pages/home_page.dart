import 'package:flutter/material.dart';
import 'package:flutter_state_management/pages/first_page.dart';
import 'package:flutter_state_management/pages/second_page.dart';

import 'package:get/get.dart';

import '../controllers/tap_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    //dependency Injection Or Instantiation usual name initializing
    TapController controller = Get.put(TapController());

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
                        Color(0xFFacb6e5),
                        Color(0xFF86fde8),
                        // Color(0xFFA6FFCB),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(mainAxisAlignment:
         MainAxisAlignment.center,
         children: 
        
        [

          //we have to use GetBuilder Compulsory to display the updated value of the controller and it sould be generic to that class
          //even the calling can be done by the anyname variable also as i have used directly the controller reference variable
          GetBuilder<TapController>(builder: (anyname) {
            return Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                  // color: Colors.redAccent[200],
                    gradient: LinearGradient(colors: [
                        Color(0xFF9796f0),
                        Color(0xFFfbc7d4),
                        // Color(0xFFA6FFCB),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  controller.x.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            );
          }),
          GestureDetector(
            onTap: () {
              controller.incrementX();
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                  // color: Colors.teal[300],
                  gradient: LinearGradient(colors: [
                        Color(0xFF1A2980),
                        Color(0xFF26D0CE),
                        // Color(0xFFA6FFCB),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "Tap to Increase Count",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(()=>FirstPage()); // only to navigate from one page to another pages
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                  // color: Colors.teal[300],
                  gradient: LinearGradient(colors: [
                        Color(0xFF1A2980),
                        Color(0xFF26D0CE),
                        // Color(0xFFA6FFCB),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "Go to First page",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(()=>SecondPage());
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                  // color: Colors.teal[300],
                   gradient: LinearGradient(colors: [
                        Color(0xFFE55D87),
                        Color(0xFF5FC3E4),
                        // Color(0xFFA6FFCB),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "Go to Second page",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                  // color: Colors.teal[300],
                   gradient: LinearGradient(colors: [
                        Color(0xFFE55D87),
                        Color(0xFF5FC3E4),
                        // Color(0xFFA6FFCB),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  "Tap",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
