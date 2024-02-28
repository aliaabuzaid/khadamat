import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceList extends StatelessWidget {
  final String iconImage ;
  final String title ;
  const ServiceList({super.key,
    required this.iconImage, required this.title});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        textDirection: TextDirection.rtl,
        children: [
          Container(
              height: 120,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                  image: DecorationImage(image: AssetImage(iconImage),
                      fit: BoxFit.cover,
                  )
              ),

          ),
          Positioned(
              height: 30,
              width: 100,
              bottom: 0,
              child: Container(

                  decoration: const BoxDecoration(
                    color: Colors.black54,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),),
                  child: Text(title,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),))
          ),
        ],
      ),
    );
      /*Padding(
      padding: const EdgeInsets.only(
          left: 5.0, right: 5.0, top: 10.0),
      child: GestureDetector(
        onTap: () {

        },
        child: Container(
          width: 100.0,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
              spreadRadius: 1.0,
              offset: Offset(1.0, 1.0),
            )
            ],
          ),
          child: Column(
            children: <Widget>[
              AspectRatio(aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        topRight: Radius.circular(5.0)),
                    //16 / 9
                  ),
                  child: Image.asset(iconImage)
                  ,),),
              Container(
                padding: const EdgeInsets.only(left: 10.0,
                    right: 10.0,
                    top: 15.0,
                    bottom: 15.0),
                child: Text(title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(height: 1.3, fontSize: 15.0),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0),
                    width: 80,
                    height: 1.0,
                    color: Colors.black12,
                  ),
                  Container(
                    width: 30,
                    height: 3.0,
                    color: Colors.lime,
                  )
                ],),

            ],
          ),
        ),
      ),
    )

      Container(
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
