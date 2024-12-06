

import 'package:flutter/material.dart';
import 'package:medi_app/views/screens/Patient/nav_screen/medical_screen.dart';
import 'package:medi_app/views/screens/Patient/nav_screen/more_screen.dart';
import 'package:medi_app/views/screens/Patient/nav_screen/plans_screen.dart';
import 'package:medi_app/widgets/background.dart';
import 'nav_screen/home_screen.dart';
import 'nav_screen/records.dart';

class MainScreen extends StatefulWidget{
  @override
  State<MainScreen> createState()=>_MainScreen();


}

class _MainScreen extends State<MainScreen>{
  int _pageIndex=0;
  final List<Widget> _pages=[
    HomeScreen(),
    Records(),
    PlansScreen(),
    MedicalScreen(),
    MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF9A9E),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          ['Home', 'Records', 'Plans', 'Medical', 'More'][_pageIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color(0xFFF7E9E9),
          // backgroundColor: Color(0xFFF7E9E9),
          currentIndex: _pageIndex,
          onTap: (value){
            setState(() {
              _pageIndex=value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon:Icon(
              IconData(0xf7f5, fontFamily: 'MaterialIcons'),
              size: 25,
            ),label:"Home"),
            BottomNavigationBarItem(icon:Icon(
              IconData(0xef82, fontFamily: 'MaterialIcons', ),
              size: 25,
            ), label:"Records"),

            BottomNavigationBarItem(icon:Icon(
              IconData(0xf06bb, fontFamily: 'MaterialIcons'),
              size: 25,),label:"Schedules"),

            BottomNavigationBarItem(icon:Icon(
              IconData(0xe3d8, fontFamily: 'MaterialIcons'),
              size: 25,),label:"Medical"),

            BottomNavigationBarItem(icon:Icon(
              IconData(0xe401, fontFamily: 'MaterialIcons'),
              size: 25,
            ),label:"More"),
          ]),

      body: Background(child:_pages[_pageIndex]

      ),
    );

  }

}