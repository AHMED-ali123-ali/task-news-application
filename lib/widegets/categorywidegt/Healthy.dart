import 'package:flutter/material.dart';

import '../farmer.dart';
class helathy extends StatefulWidget {
  const helathy({super.key});

  @override
  State<helathy> createState() => _helathyState();
}

class _helathyState extends State<helathy> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    'https://images.pexels.com/photos/576831/pexels-photo-576831.jpeg')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Healthy',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
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
    'Health research is rapidly advancing, focusing on prevention and improving quality of life.',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),


          ),
        ),


      ],
    );
  }
}