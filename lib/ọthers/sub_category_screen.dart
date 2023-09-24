import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sebhs/models/triplists.dart';

import 'detailes_screen.dart';

class SubCategoryScreen extends StatefulWidget {
  static const String routeName = "tripScreen";

  const SubCategoryScreen({super.key, required this.name});
  final String name;
  @override
  State<SubCategoryScreen> createState() => _SubCategoryScreenState();
}

class _SubCategoryScreenState extends State<SubCategoryScreen> {
  TripModelList tripModelList = TripModelList();
  List<String> data = [];
  List<String> titles = [];
  List<String> Season=[
    "الشتاء",
    "الربيع",
    "الصيف",
    "الخريف",
    "الشتاء"
  ];
    List<String> durtion=[
    "10 ايام",
    "20 ايام",
    "25 ايام",
    "30 ايام",
    "15 ايام",
  
  ];
   List<String> TripTypee=[
    "استكشاف",
    "نقاء",
    "انشطه",
    "معالجه",
    "مغامره"
  ];

   List<String> apppardata = [];

  @override
  void initState() {
    super.initState();
    if (widget.name == "جبال") {
      data = tripModelList.mountains_image;
      titles = tripModelList.mountains_image_title;
     // apppardata = tripModelList.mountains_image_id;
    } else if (widget.name == "صحراء") {
      data = tripModelList.desertes_image;
      titles = tripModelList.desertes_image_title;
     // apppardata = tripModelList.desertes_image_id;
      
    } else if (widget.name == "بحيرات") {
      data = tripModelList.lakes_image;
      titles = tripModelList.lakes_image_title;
     // apppardata = tripModelList.lakes_image_id;
    } else if (widget.name == "مدن تاريخيه") {
      data = tripModelList.oldbuilding_image;
      titles = tripModelList.oldbuilding_image_title;
     // apppardata = tripModelList.oldbuilding_image_id;
    } else if (widget.name == "أخري") {
      data = tripModelList.others_image;
      titles = tripModelList.others_image_title;
      //apppardata = tripModelList.others_image_id;
    } else if (widget.name == "شواطئ") {
      data = tripModelList.beaches_image;
      titles = tripModelList.beaches_image_title;
      apppardata = tripModelList.beaches_image_title;
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context,  MaterialPageRoute(
                      builder: (context) =>
                          TripDetailesScreen(tripname:   titles[index] ,name: data[index] , ),
                    )); 
              
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              elevation: 7,
              margin: EdgeInsets.all(10),
              child: Column(children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14),
                      ),
                      child: Image.asset(
                        data[index],
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0.8),
                          ],
                              stops: [
                            0.6,
                            1
                          ])),
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Text(
                        titles[index],
                        style: Theme.of(context).textTheme.headline6,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                   
                  ],
                ),
                 Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(children: [
                             Text(durtion[index],style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 15,color: Colors.black
                            ),),
                            Icon(Icons.today,color: Theme.of(context).accentColor,),
                            SizedBox(width: 6,),
                           
                            
                          ],),
                           Row(children: [
                             Text(Season[index],style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 15,color: Colors.black
                            ),),
                            Icon(Icons.sunny,color: Theme.of(context).accentColor,),
                            SizedBox(width: 6,),
                           
                            
                          ],),
                          Row(children: [
                             Text(TripTypee[index],style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 15,color: Colors.black
                            ),),
                            Icon(Icons.family_restroom,color: Theme.of(context).accentColor,),
                            SizedBox(width: 6,),
                           
                            
                          ],),
                        ],
                      ),
                    ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
// Image.asset(data[index])