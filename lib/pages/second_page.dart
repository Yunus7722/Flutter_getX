import 'package:flutter/material.dart';
import 'package:flutter_state_management/pages/third_page.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
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
             GestureDetector(
            onTap: () {
              Get.to(()=>ThirdPage());
            },
            child: Container(
              margin: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                  // color: Colors.teal[300],
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