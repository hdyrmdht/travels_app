import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sebhs/screens/categories_screen.dart';

import 'Favorite_Screen.dart';
import 'categories_screen.dart';
import 'drawer_screen.dart';

class TabsScreen extends StatefulWidget {
    static const String routeName = "home";

  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String,Object>>  tabs=[
    {
      'screen': AllCategoriesScreen(),
      'title':"تصنيفات الرحلات"

    },
    
  {
    'screen':   FavouriteScreen(),
      'title':" الرحلات"
  }
  ];
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tabs[count]['title'] as String),
      ),
      drawer:DrawerScreen(),
      body: tabs[count]['screen']as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
   count=value;
   setState(() {
     
   });
        },
        currentIndex: count,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
       unselectedItemColor: Colors.white,
        items: [
        BottomNavigationBarItem(icon:  Icon(Icons.dashboard),label: "التصنيفات",),
        BottomNavigationBarItem( icon: Icon(Icons.star),label: "المفضله",)
      ]),

    );
  }
}

// DefaultTabController(
//       length: 2,
//     child:  Scaffold(
//       appBar: AppBar(
//         title: Text("دليل سياحي"),
//         bottom: TabBar(
//           tabs: [
//             Tab(
//               icon: Icon(Icons.dashboard),
//            text:  "التصنيفات",
//             ),
//             Tab(    
//               icon: Icon(Icons.star),
//               text: "المفضله",
//               ),
//           ],
        
//         ),
//       ),
//       body: TabBarView(children: [
//         AllCategoriesScreen(),
//         FavouriteScreen(),
//       ]),

//     ),
//     );