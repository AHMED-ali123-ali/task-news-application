import 'package:flutter/material.dart';
import 'package:news_application/screens/home_screen.dart';
void main(){

  runApp(Newsapp());
}





class Newsapp extends StatelessWidget {
  const Newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen()
    );
  }
}
