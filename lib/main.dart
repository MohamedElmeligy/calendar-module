<<<<<<< HEAD
//Menna
//yomna
=======
//marwan*
>>>>>>> d5037e041e084fea93fd7e56d3de2ad757f0fa1e
import 'package:flutter/material.dart';

import 'package:calendar_module/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
