import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sebhs/models/card_model.dart';

import '../models/trip_model.dart';
import '../models/triplists.dart';
import '../widgets/tripitem.dart';
class CategoryTripsScreen extends StatelessWidget {
List<TripModelList> carlist = [];
  static const String routeName="";
  

  @override
  Widget build(BuildContext context) {
    var arg=ModalRoute.of(context)!.settings.arguments as TripModel;
    return Scaffold(
      appBar: AppBar(
        title:Text(arg.name) ,
      ),
      body:ListView.builder(itemBuilder: (
        (context, index) =>TripItem(carlist[index],index) )),
      
    );
  }
}