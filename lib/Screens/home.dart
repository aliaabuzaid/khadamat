import 'package:flutter/material.dart';
import 'package:khadamati/widgets/circle_list.dart';

import '../widgets/servies_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List images =["imagesss.jpeg","downloadd.jpeg","care2.jpeg","Yutr.png","care3.jpeg","Yu.jpeg",];
  List lables =["صيانة اجهزه كهربائيه","صالون نسائي","تدليك وعلاج طبيعي","سباكه","تمريض ورعاية","تنظيف"];

  List images1 =["downloadd.jpeg","Uh.jpeg","care3.jpeg","Yu.jpeg","imagesss.jpeg"];
  List lables1 =["سباكه","كهربائي","حداده","نجاره","نقاشه",];

  List images2 =["Yvc.jpeg","downloaaad.jpeg","Uh.jpeg","care3.jpeg","Yu.jpeg",];
  List lables2 =["نقل اثاث","الديكورات","تنسيق حدائق ","خدمات سيارات","اعمال فنية",];

   @override
  Widget build(BuildContext context) {

    double width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: width,
                decoration: const BoxDecoration(
               image: DecorationImage(image: AssetImage("assets/im/di.jpg"),
                 fit: BoxFit.cover)
              ),),
              SizedBox(height:15),
              Container(
                height: 120,
                width: width,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.builder(
                      shrinkWrap: false,
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 120,
                          width: 100,
                          child: CircleList(
                            iconImage: 'assets/im/${images[index]}',
                            title: lables[index],),
                        );
                    },

                  ),
                ),
              ),
              const Divider(),
              Align(
                alignment: Alignment.centerRight,
                child: Text("الخدمات اليدوية والحرفيه",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.black45,
                 fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
              ),
              SizedBox(height:15),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 120,
                  width: width,
                  child: ListView.builder(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: images1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 120,
                        width: 100,

                        child: ServiceList(
                          iconImage: 'assets/im/${images1[index]}',
                          title: lables1[index],),
                      );
                    },

                  ),
                ),
              ),
              const Divider(),
              Align(
                alignment: Alignment.centerRight,
                child: Text("صيانة الاجهزه الكهربائيه",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                      fontSize: 20
                  ),),
              ),
              SizedBox(height:15),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 120,
                  width: width,
                  child: ListView.builder(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: images2.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 120,
                        width: 100,

                        child: ServiceList(
                          iconImage: 'assets/im/${images2[index]}',
                          title: lables2[index],),
                      );
                    },

                  ),
                ),
              ),
              const Divider(),
              Align(
                alignment: Alignment.centerRight,
                child: Text("خدمات أخري ",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                  ),),
              ),
              SizedBox(height:15),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  height: 120,
                  width: width,
                  child: ListView.builder(
                    shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 120,
                        width: 100,
                        child: ServiceList(
                          iconImage: 'assets/im/${images[index]}',
                          title: lables[index],),
                      );
                    },

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
