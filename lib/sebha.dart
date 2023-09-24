import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int index=0;
  List<String> tasbehaname = [
    "الله اكبر",
    "الـحمد الله ",
    "سبحان الله ",
    "لا إلــه إلا الله ",
    "  اسـتـغفر الله"
  ];
  @override
  Widget build(BuildContext context) {


    return Stack(
      children: [
        Image.asset(
          "images/img.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0.0,
            title: Center(
                child: Text(
              "Islami",
              style: TextStyle(color: Colors.black),
            )),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: Column(children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 38),
                    child: Image.asset("images/head_sebha_dark.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Image.asset("images/body_sebha_dark.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                "tasbehatcount",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                height: 27,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 72,
                    width: 60,
                    child: Center(
                      child: Text(
                        "${count}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  if
                  (count<30) {
                    count++;
                  }else{
                    count=0;
                    if(index < tasbehaname.length-1){
                      index++;
                    }else{
                      index=0;
                    }
                  }
                  setState(() {});
                },
                child:Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 52,
                    width: 130,
                    child: Center(
                      child: Text(
                       tasbehaname [index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ])),
          ),
        ),
      ],
    );
  }
}
