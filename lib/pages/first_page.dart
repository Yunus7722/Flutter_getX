import 'package:flutter/material.dart';
import 'package:flutter_state_management/controllers/tap_controller.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    // we cannot create a new object for controller as we have already instantiated in the homepage
    // so we need to find that controller w.r.t class and then we can use it for state management
    // if you want to track the particular variable in any page you need to wrap that particular container in a GetBuilder respective to the pages u r using

    TapController madara = Get.find(); //it can be anyname or it can be the same controller variable name

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
             gradient: LinearGradient(colors: [
                        Color(0xFFE55D87),
                        Color(0xFF5FC3E4),
                        // Color(0xFFA6FFCB),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back();
          },
        ),
      ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (_) {
              return Container(
                margin: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                    // color: Colors.redAccent,
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
                    madara.x.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              );
            }),
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                    // color: Colors.teal[300],
                     gradient: LinearGradient(colors: [
                          Color(0xFFCC95C0),
                          Color(0xFFDBD4B4),
                          Color(0xFF7AA1D2),
                          
                          // Colors.yellow
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight
                        ),
                          // 
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Tap to go back",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                madara.decreaseX();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                    // color: Colors.teal[300],
                     gradient: LinearGradient(colors: [
                          Color(0xFFCC95C0),
                          Color(0xFFDBD4B4),
                          Color(0xFF7AA1D2),
                          
                          // Colors.yellow
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight
                        ),
                          // 
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Tap to Decrease count",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
