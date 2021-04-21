import 'package:flutter/material.dart';
import 'package:foodeo/model/bottom_navigation_model.dart';
import 'package:foodeo/screens/bottom_navigation_bar_screen.dart';
import 'package:foodeo/screens/cart.dart';
import 'package:foodeo/screens/drawer_screen.dart';
import 'package:foodeo/screens/profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _currentIndex = 0;
  List<Widget> _childrens;

  final bottomBarModel = <BottomBarItemModel>[
    BottomBarItemModel(Icons.shopping_cart_outlined),
    BottomBarItemModel(Icons.home_outlined),
    BottomBarItemModel(Icons.perm_identity_sharp),
  ];


  @override
  void initState() {
    _childrens = [
      Cart(),
      HomePage(),
      Profile()
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(''),
      ),
      drawer: StileDrawer(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
