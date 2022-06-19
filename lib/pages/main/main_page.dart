import 'package:flutter/material.dart';
import 'package:task_osama/pages/home/home.dart';

import '../../utils/scaffold_app.dart';
import '../shopping/shopping_cart.dart';

class MainPage extends StatefulWidget {
  static const route = '/';
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  List<Widget> screen = const [
    HomePage(),
    ShoppingCart(),
    HomePage(),
    HomePage(),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    List<BottomNavigationBarItem> bottomItem = [
      BottomNavigationBarItem(
        icon: Container(
          decoration: BoxDecoration(
              color:
                  currentIndex == 0 ? theme.primaryColor : Colors.transparent,
              shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.home_outlined,
              size: 30,
              color: currentIndex == 0 ? Colors.white : Colors.grey,
            ),
          ),
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Container(
          decoration: BoxDecoration(
              color:
                  currentIndex == 1 ? theme.primaryColor : Colors.transparent,
              shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: currentIndex == 1 ? Colors.white : Colors.grey,
            ),
          ),
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Container(
          decoration: BoxDecoration(
              color:
                  currentIndex == 2 ? theme.primaryColor : Colors.transparent,
              shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.check_box_outline_blank,
              size: 30,
              color: currentIndex == 2 ? Colors.white : Colors.grey,
            ),
          ),
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Container(
          decoration: BoxDecoration(
              color:
                  currentIndex == 3 ? theme.primaryColor : Colors.transparent,
              shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.person_outline,
              size: 30,
              color: currentIndex == 3 ? Colors.white : Colors.grey,
            ),
          ),
        ),
        label: '',
      ),
    ];

    return ScaffoldApp(
        hasSafeArea: false,
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 3, blurRadius: 5),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              showUnselectedLabels: false,
              showSelectedLabels: false,
              backgroundColor: Colors.white,
              unselectedItemColor: const Color(0xff858697),
              selectedItemColor: theme.primaryColor,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              items: bottomItem,
            ),
          ),
        ),
        body: screen[currentIndex]);
  }
}
