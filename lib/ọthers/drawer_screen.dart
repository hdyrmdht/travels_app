import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'filters_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Theme.of(context).accentColor,
            
            child: Text(
              "دليلك السياحي",
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          bildlistTile("الرحلات",Icons.card_travel,(){Navigator.pushReplacementNamed(context, "home");}),
          bildlistTile("الفلتره",Icons.filter_list,(){Navigator.pushReplacementNamed(context,FilterScreen.routeName);}),
         
        ],
      ),
    );
  }

  ListTile bildlistTile(String title ,IconData icon,Function() ontablink) {
    return ListTile(
onTap: ontablink,
          leading: Icon(
           icon ,
            size: 30,
            color: Colors.blue,
          ),
          title: Text(
          title  ,
            style: TextStyle(
                fontFamily: "Elmessiri",
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        );
  }
}
