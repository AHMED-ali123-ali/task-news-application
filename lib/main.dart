import 'package:flutter/material.dart';
import 'package:news_application/screens/Home_screen.dart';
main(){

  runApp(Newsapp());
}

class Newsapp extends StatelessWidget {
  const Newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:homescreen()
    );
  }
}
