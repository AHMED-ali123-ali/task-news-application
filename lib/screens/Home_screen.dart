import 'package:flutter/material.dart';
import 'package:news_application/model/data.dart';
import 'package:news_application/widegets/categorywidegt/Healthy.dart';
import 'package:news_application/widegets/farmer.dart';
import 'package:news_application/widegets/sport.dart';

import '../widegets/categorywidegt/category_item.dart';
import '../widegets/categorywidegt/categorylist.dart';
class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('NewsApp'),
        centerTitle:true,
      ),
      body:
    ListView(
        children: [
          SizedBox(height: 10,),
          categorylist(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('General news',style: TextStyle(fontSize: 30,color: Colors.orange,fontWeight: FontWeight.bold).copyWith(color:Colors.black),),
          ),
         farmer(),
          SizedBox(height: 40,),
           sport(),
          SizedBox(height: 40,),
           helathy(),
        ],
      )
      )
    ;}
}
