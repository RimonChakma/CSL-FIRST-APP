import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_four_project/second.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    print("I am a init state");
   Timer(Duration(seconds: 3), () { 
    print("after 3 second with next page");
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LoginView();
    },));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print("i am a build function");
    return Scaffold(
      body: Center(
       child: Image.asset("assets/images/logo.png",
       height: 150,
       width: 150,
       ),
      ),
    );
  }
}