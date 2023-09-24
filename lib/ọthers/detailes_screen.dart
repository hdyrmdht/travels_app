import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/triplists.dart';

class TripDetailesScreen extends StatefulWidget {
final String tripname;
final String name;
  const TripDetailesScreen({super.key,required this.tripname,required  this.name});

  @override
  State<TripDetailesScreen> createState() => _TripDetailesScreenState();
}

class _TripDetailesScreenState extends State<TripDetailesScreen> {

   
  TripModelList tripModelList = TripModelList();
  
   
  @override
  Widget build(BuildContext context) {
    TripModelList tripModelList=TripModelList();
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.tripname),centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
         
            height: 300,
            width: double.infinity,
            child: Image.asset(widget.name,fit: BoxFit.fill,),
          ),
          SizedBox(height: 10,),
          buildSectiontitle(context,"الانشطه"),
          ListConainer(
            ListView.builder(
              itemCount: tripModelList.activities.length,
              itemBuilder: ((context, index) => Card(elevation: .3,
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Text(tripModelList.activities[index]),
                ) ,
              )
              ),
              
              ),
          ),
          buildSectiontitle(context, "البرنامج اليومي"),
          ListConainer(
            ListView.builder(itemCount: tripModelList.program.length,
              itemBuilder: ((context, index) =>Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                     child: Text("يوم ${index+1}"),
                    ),
                    title: Text(tripModelList.program[index]),
                      ),
              Divider()  ],
              )
                  
                  
      
             ))
       ),
         SizedBox(height: 100,)  
         
         ]),
      ),
    );
  }
  Widget buildSectiontitle(BuildContext context,texttitle){
    return Container(   alignment: Alignment.topRight,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Text(texttitle,style: Theme.of(context).textTheme.headline5,),
        );
        
  }
  Widget ListConainer(Widget child){
    return Container(alignment: Alignment.centerRight,
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey)
        ),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 200,
          child: child);
  }
}