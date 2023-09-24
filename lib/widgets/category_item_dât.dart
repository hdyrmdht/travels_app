import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sebhs/widgets/tripitem.dart';

import '../models/card_model.dart';
import '../models/trip_model.dart';
import '../screens/category_trips_screen.dart';

class CardItem extends StatelessWidget {
int index;
  CardModel cardModel;
  CardItem(this.cardModel,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: (){
         Navigator.pushNamed(
                        context,
                        CategoryTripsScreen.routeName,
                        arguments:TripModel(cardModel.tripname[index],index),
                      );
      },
      child: Stack(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              ClipRRect(
                child: Image.asset(
                  cardModel.imgeback[index],
                  height: 250,
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black.withOpacity(.3),
            ),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Text(
               cardModel.tripname[index],
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
