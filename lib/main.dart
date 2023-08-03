import 'package:dailyfood/utils/kcolor.dart';
import 'package:flutter/material.dart';





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
        primarySwatch: Colors.blue,
      ),
      home:  Test(),
    );
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width; 
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [
          Container(  
            height: 48.0,
            width: width,
            alignment: Alignment.center,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color:Kcolor.active1, 
            ),
            child: Text("sign in" , style: const TextStyle(color:Kcolor.bgColor,fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: .8),)
          )
        ],
      ),
    );
  }
}
