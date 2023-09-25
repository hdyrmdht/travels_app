import 'package:flutter/material.dart';
import 'package:sebhs/%E1%BB%8Dthers/categories_screen.dart';
import 'package:sebhs/screens/categories_screen.dart';
import 'package:sebhs/screens/category_trips_screen.dart';
import 'package:sebhs/sebha.dart';

import 'ọthers/filters_screen.dart';
import 'ọthers/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.amber,
        primaryColor: Colors.blue,
        fontFamily: 'Elmessiri',
        textTheme: ThemeData.light().textTheme.copyWith(
          // ignore: prefer_const_constructors
          headline5: TextStyle(
            
            color: Colors.blue,
            fontSize: 24,
            fontFamily: 'Elmessiri',
            fontWeight: FontWeight.bold
          ),
           headline6: TextStyle(
            color: Color.fromARGB(255, 236, 227, 227),
            fontSize: 26,
            fontFamily: 'Elmessiri',
            fontWeight: FontWeight.bold
          )
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute:"home" ,
      routes: {
        TabsScreen.routeName:(context)=> TabsScreen(),
        AllCategoriesScreen.routeName:(context)=> AllCategoriesScreen(),
        CategoryTripsScreen.routeName:(context)=> CategoryTripsScreen(),
        FilterScreen.routeName:(context)=> FilterScreen(),
      },
    );
  }
}
