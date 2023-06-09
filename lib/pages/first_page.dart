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
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Column(
        children: [
          GetBuilder<TapController>(builder: (_) {
            return Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
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
                  color: Colors.teal[300],
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
                  color: Colors.teal[300],
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
    );
  }
}
