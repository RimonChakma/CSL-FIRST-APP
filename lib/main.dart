import 'package:flutter/material.dart';
import 'package:flutter_four_project/first.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(
        
      ),
    );
  }

}