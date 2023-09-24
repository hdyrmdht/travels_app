// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sebhs/models/trip_model.dart';

import '../models/triplists.dart';

class TripItem extends StatelessWidget {
 int index;
TripModelList trepid;
// ignore: use_key_in_widget_constructors
TripItem(this.trepid,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
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
    child: Image.asset("trepid",height: 250,width: double.infinity,fit: BoxFit.fill,),
  ),
],
          ),
        ]),
      ),
    );
  }
}
