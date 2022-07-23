import 'package:flutter/material.dart';
import 'package:stateful_numbers_app/screens/home_page.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      title: "Stateful Numbers App",
    );
  }
}
