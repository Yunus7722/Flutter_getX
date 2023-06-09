import 'package:flutter/material.dart';
import 'package:flutter_state_management/pages/third_page.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             GestureDetector(
            onTap: () {
              Get.to(()=>ThirdPage());
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
                  "Go to Third page",
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