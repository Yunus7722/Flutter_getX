import 'package:flutter/material.dart';
import 'package:flutter_state_management/helper/init_controllers.dart';
import 'package:get/get.dart';

import 'pages/home_page.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  //2nd method to initialize controllers or known as binding
  await init_Controllers();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // only for navigation we need GetMaterialApp 
      home:  HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


