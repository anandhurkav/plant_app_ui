
import 'package:flutter/material.dart';
import 'package:plant_app_ui/home_page.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:Color.fromARGB(246, 131, 170, 86) 
      ),
      home: HomePage(),
    );
  }
}