import 'package:flutter/material.dart';
import 'package:flutter_state_management/controllers/list_controller.dart';
import 'package:flutter_state_management/controllers/tap_controller.dart';
import 'package:flutter_state_management/pages/home_page.dart';
import 'package:flutter_state_management/pages/third_page.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {


    TapController controller = Get.find();
    // dependency injection for listController
    // ListController listController = Get.put(ListController());
    ListController listController = Get.find();
    

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
      body: Center(
        child: Container(
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 GestureDetector(
                  onTap: () {
                    Get.to(() => HomePage());
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 29, 139, 217),
                        // Color(0xFF12D8FA),
                        Color.fromRGBO(61, 236, 204, 1),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
                        // color: Colors.teal[300],
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Tap to Go Home',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Obx(() => GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                        // color: Color.fromARGB(255, 82, 146, 255),
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
                       "X + Y = "+ Get.find<TapController>().z.toString(), // another way of finding the controller and using it directly
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                       gradient: LinearGradient(colors: [
                        Color(0xFF1A2980),
                        Color(0xFF26D0CE),
                        // Color(0xFFA6FFCB),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
                        // color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                       "X = "+ Get.find<TapController>().x.toString(), // another way of finding the controller and using it directly
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Obx(() =>   GestureDetector(
                  onTap: () {},
                  child: Container(
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
                       'Y = '+ Get.find<TapController>().y.value.toString(), // another way of finding the controller and using it directly
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),),
              
                 GestureDetector(
                  onTap: () {
                   controller.incrementY();
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                        // color: Colors.teal[300],
                        gradient: LinearGradient(colors: [
                        Color(0xFFff6e7f),
                        Color(0xFFbfe9ff),
                        // Color(0xFFA6FFCB),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Increase Y value',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
               
                GestureDetector(
                  onTap: () {
                    // Get.to(() => HomePage());
                    Get.find<TapController>().addXY();
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFCC95C0),
                        Color(0xFFDBD4B4),
                        Color(0xFF7AA1D2),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
                        // color: const Color.fromARGB(255, 161, 77, 182),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Add X and Y ',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),

                 GestureDetector(
                  onTap: () {
                    listController.setList(controller.z);
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFF003973),
                        Color(0xFFE5E5BE),
                        // Color(0xFFA6FFCB),
                        
                        // Colors.yellow
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight
                      ),
                        // color: Color.fromARGB(255, 182, 77, 91),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'Save X + Y ',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),

                Obx(() => Container(
                    margin: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
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
                        // color: Color.fromARGB(255, 182, 133, 77),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        'List = '+ listController.list.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
