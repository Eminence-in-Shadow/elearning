import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'Account.dart';
import 'Featured.dart';
import 'MyCourse.dart';
import 'Search.dart';
import 'Wishlist.dart';
import 'data.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController=new PageController();
  int currentIndex=0;
  void onTap(int page){
    setState(() {
      currentIndex=page;
    });
    pageController.jumpToPage(page);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:PageView(
       onPageChanged: (index){
         setState(() {
           currentIndex=index;
         });
       },
       controller: pageController,
       children: [
         Featured(contentList: featured, contentList2: top,),
         Search(),
         MyCourse(),
         Wishlist(),
         Account(),
       ],
     ),
      bottomNavigationBar:BottomNavigationBar(
        onTap: onTap,
        selectedIconTheme: IconThemeData(
          color: Colors.redAccent
        ),
        iconSize: 26.0,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        currentIndex: currentIndex,
        backgroundColor: Colors.grey.shade800,
        unselectedIconTheme: IconThemeData(
          color: Colors.white
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.white
        ),
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.star,),
              label:"Featured"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,),
              label:"Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_video,),
              label:"My Courses"
          ),
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.heartOutline),
              label:"Wishlist"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box,),
              label:"Account"
          ),
        ],

      ),
    );
  }
}
