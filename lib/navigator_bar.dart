import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:proj/home_screen.dart';

class NavigatorBars extends StatefulWidget {
  const NavigatorBars({Key? key}) : super(key: key);

  @override
  State<NavigatorBars> createState() => _NavigatorBarsState();
}

class _NavigatorBarsState extends State<NavigatorBars> {
  @override
  Widget build(BuildContext context) {

    List page =[
      MyHomeScreen(),
      MyHomeScreen(),
      MyHomeScreen(),
      MyHomeScreen(),
      
    ];
    int selectitem = 0;
    _onItemTap(int index) {
      setState(() {
        selectitem = index;
      });
    }

    return Scaffold(
      body: page[selectitem],
      bottomNavigationBar:  BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: "Profile"),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        currentIndex: selectitem,
        showSelectedLabels: false,
        selectedFontSize: 16,
        onTap: _onItemTap,
      ),
    );
  }
}
