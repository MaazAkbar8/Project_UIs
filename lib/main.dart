import 'package:flutter/material.dart';
import 'package:resturent_app_ui/detailedscreen.dart';
import 'package:resturent_app_ui/mainscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
backgroundColor: Colors.pink,

      //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: Main(),
      debugShowCheckedModeBanner: false,

    );
  }
}


