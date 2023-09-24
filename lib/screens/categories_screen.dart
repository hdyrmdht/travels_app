import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/card_model.dart';
import '../widgets/category_item_dât.dart';

class CategoryScreen extends StatelessWidget {
  static const String routeName="home";


  CategoryScreen() {
    addTestData();
  }

  List<CardModel> cards = [];

  void addTestData() {
    for (int i = 0; i < 7; i++) {
      cards.add(CardModel());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("دليل سياحي"),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 7/8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10, crossAxisCount: 2,

        ),
        itemBuilder: (context,index)=>CardItem(cards[index],index),
        itemCount: cards.length,
      ),
    );
  }
}
