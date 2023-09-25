import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sebhs/%E1%BB%8Dthers/drawer_screen.dart';

class FilterScreen extends StatefulWidget {
  static const String routeName = "filter";
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isinsummer = false;
  bool isinWinter = true;
  bool isforFamily = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("الفلتره"),
      ),
      drawer: DrawerScreen(),
      body: Column(children: [
        Expanded(
            child: ListView(
          children: [
            SwitchListTile(
                title: Text("الرحلات الصيفيه"),
                subtitle: Text("اظهار الرحلات الصيفيه"),
                value: isinsummer,
                onChanged: (newvalue) {
                  isinsummer = newvalue;
                  setState(() {});
                }),
            SizedBox(
              height: 10,
            ),
            SwitchListTile(
                title: Text("الرحلات الشتويه"),
                subtitle: Text("اظهار الرحلات الشتويه"),
                value: isinWinter,
                onChanged: (newvalue) {
                  isinWinter = newvalue;
                  setState(() {});
                }),
            SizedBox(
              height: 10,
            ),
            SwitchListTile(
                title: Text("الرحلات العائليه"),
                subtitle: Text("اظهار الرحلات العائليه"),
                value: isforFamily,
                onChanged: (newvalue) {
                  isforFamily = newvalue;
                  setState(() {});
                })
          ],
        ))
      ]),
    );
  }
}
