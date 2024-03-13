import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/page/detail/detail_page.dart';
import 'package:weather_app/page/home/widget/home_page.dart';

class BotomNavigationCustom extends StatefulWidget {
  const BotomNavigationCustom({super.key});

  @override
  State<BotomNavigationCustom> createState() => _BotomNavigationCustomState();
}

class _BotomNavigationCustomState extends State<BotomNavigationCustom> {
  List<BottomNavigationBarItem> listItem = [
    const BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home), label: 'Home'),
    const BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.list_bullet), label: 'List ')
  ];

  List<Widget> listPages = [
    const HomePage(),
    const DetailPage(),
  ];

  int activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: listPages[activePage],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: activePage,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          backgroundColor: Colors.white12,
          elevation: 0,
          onTap: (index) {
            setState(() {
              activePage = index;
            });
          },
          items: listItem),
    );
  }
}
