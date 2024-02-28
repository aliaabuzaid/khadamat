import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleList extends StatelessWidget {
  final String iconImage ;
  final String title ;
  const CircleList({super.key,
    required this.iconImage, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Column(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:DecorationImage(image: AssetImage(iconImage,),
                fit: BoxFit.cover,
          ),
        ),
                ),
        Align(
            alignment: Alignment.center,
            child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),))

      ],


    );
    /*Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(iconImage),
          fit: BoxFit.cover)
        ),
        child: Text(title)
        //Image.asset(iconImage,
         );*/
  }

}
