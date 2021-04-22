import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodeo/utils/custom_drawer_screen.dart';
import 'package:foodeo/utils/custom_icons.dart';
import 'package:foodeo/utils/custom_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Center(
          child: Text(
            'What are you craving for?',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(MyFlutterApp.menu)),
        ),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),
      drawer: StileDrawer(),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),

        ),
        child: CustomSliderWidget(
          items: [
            'assets/images/beef.jpg',
            'assets/images/burger.jpg',
            'assets/images/chiken.jpg',
            'assets/images/fries.jpg',
            'assets/images/pizza.jpg',
          ],
        ),
      ),
    );
  }
}
