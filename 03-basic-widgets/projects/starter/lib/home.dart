// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //7
  int _selectedIndex = 0;
  //8
  static List<Widget> pages = <Widget> [
    Container(child: const Card1(),),
    Container(child: const Card2(),),
    Container(color: Colors.blue,)
  ];
  //9
  void _onItemTapped (int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fooderlich',
        style: Theme.of(context).textTheme.headline6
        ),
      ),
       body: pages[_selectedIndex],
         // ignore: lines_longer_than_80_chars
         bottomNavigationBar: BottomNavigationBar(
           selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
           //Set selected tab bar
           currentIndex: _selectedIndex,
           onTap: _onItemTapped,
           items: [
             const BottomNavigationBarItem(
               icon: Icon(Icons.card_giftcard),
               label: 'Card'
             ),
             const BottomNavigationBarItem(
               icon: Icon(Icons.card_giftcard),
               label: 'Card2'
             ),
             const BottomNavigationBarItem(
               icon: Icon(Icons.card_giftcard),
               label: 'Card3'
             ),
           ]
         ),
    );
  }
}