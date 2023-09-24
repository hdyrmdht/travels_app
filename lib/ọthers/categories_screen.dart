import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sebhs/%E1%BB%8Dthers/sub_category_screen.dart';
import 'package:sebhs/models/card_model.dart';

import '../models/triplists.dart';

class AllCategoriesScreen extends StatelessWidget {
  static const String routeName = "home";

  @override
  Widget build(BuildContext context) {
    CardModel cardModel = CardModel();
    TripModelList tripModelList = TripModelList();
    return Scaffold(
      appBar: AppBar(
        title: Text("دليل سياحي"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 5, left: 5),
        child: GridView.builder(
          // ignore: prefer_const_constructors
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
          ),
          itemCount: cardModel.imgeback.length,
          itemBuilder: (context, index) {
            return InkWell(
              splashColor: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          SubCategoryScreen(name: cardModel.tripname[index],),
                    ));
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
          },
        ),
      ),
    );
  }
}
//  Image.asset(cardModel.imgeback[index]),
//                 Text(cardModel.tripname[index],style: TextStyle(