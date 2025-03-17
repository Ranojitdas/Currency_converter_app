import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/currency_converter_cupertino.dart';
import 'currency_converter_material.dart';
void main(){
  runApp(MyApp());
}

//   Types of Widgets
// 1. stateless widgets
// 2. stateful widgets

 // stateless is immutable means once it crated it can not be changed

  // 1. Material Design
  // 2. Cupertino Design

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CurrencyConverterMaterialPage(),
      );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override Widget build(BuildContext context){
    return CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
