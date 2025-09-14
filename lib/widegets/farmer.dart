import 'package:flutter/material.dart';
class farmer extends StatefulWidget {
  const farmer({super.key});

  @override
  State<farmer> createState() => _farmerState();
}

class _farmerState extends State<farmer> {
  @override
  Widget build(BuildContext context) {
    return   Column(
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
                    'https://images.pexels.com/photos/28469559/pexels-photo-28469559.jpeg')),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Farmer',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
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
              'A farmer stands in a green field working with simple rural clothes harvesting crops under the bright sun.',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
          ),
        ),

      ],

    );
  }
}

bool seview= false;