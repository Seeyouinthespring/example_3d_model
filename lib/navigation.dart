import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'glb_model_screen.dart';
import 'navigation_index_model.dart';
import 'obj_model_screen.dart';

class CustomNavigation extends StatelessWidget {
  CustomNavigation({super.key, required this.title});

  final String title;

  final screens = [
    const ObjModelScreen(),
    const GlbModelScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarIconBrightness: Brightness.light,
    //     statusBarBrightness: Brightness.dark,
    //     statusBarColor: Color(0xFF02A1FB),
    //   ),
    // );

    return Consumer<NavigationIndexModel>(builder: (context, service, child) {
      return Scaffold(
        body: screens[service.index],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 26,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: service.index,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          onTap: (index) => service.resetIndex(index),
          selectedFontSize: 18,
          unselectedFontSize: 18,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.data_object, color: Colors.grey,),
              activeIcon: Icon(Icons.data_object, color: Colors.black,),
              label: '.OBJ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.model_training, color: Colors.grey),
              activeIcon: Icon(Icons.model_training, color: Colors.black,),
              label: '.GLB',
            ),
          ],
        ),
      );
    });
  }
}