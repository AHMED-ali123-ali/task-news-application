import 'package:flutter/material.dart';

import '../../model/data.dart';
import 'category_item.dart';

class categorylist extends StatelessWidget {
  const categorylist({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return categoryitem(value:news[index]);
        },itemCount: news.length,),
    );
  }
}
