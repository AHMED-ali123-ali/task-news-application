import 'package:flutter/material.dart';

import 'farmer.dart';
class sport extends StatefulWidget {
  const sport({super.key});

  @override
  State<sport> createState() => _sportState();
}

class _sportState extends State<sport> {
  @override
  Widget build(BuildContext context) {
    return  Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){},
              splashColor: Colors.orange,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                      'https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Tennis',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          InkWell(
            onTap: (){
              setState(() {
                seview = !seview;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20),
              child: Text(
                overflow: seview ? TextOverflow.visible:TextOverflow.ellipsis,
                maxLines: seview? null: 2,
                'Tennis courts witnessed intense competition today in an atmosphere full of excitement and energy.',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
          ),
        ],
    );

  }
}

