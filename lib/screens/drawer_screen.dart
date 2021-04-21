import 'package:flutter/material.dart';
import 'package:foodeo/common/widgets/list_tile.dart';


class StileDrawer extends StatefulWidget {
  @override
  _StileDrawerState createState() => _StileDrawerState();
}

class _StileDrawerState extends State<StileDrawer> {
  List<CommonListTile> list = [
    CommonListTile(
      title: 'Home',
      icon: Icons.home_outlined,
      onPressed: () {
        print('pressed');
      },
    ),
    CommonListTile(
      title: 'Categories',
      icon: Icons.fastfood_outlined,
      onPressed: () {}),
    CommonListTile(
        title: 'Best Deals For you',
        icon: Icons.clean_hands,
        onPressed: () {}),
    CommonListTile(
        title: 'My Orders',
        icon: Icons.shopping_basket_outlined,
        onPressed: () {}),
    CommonListTile(
        title: 'Cart',
        icon: Icons.shopping_cart_outlined,
        onPressed: () {}),
    CommonListTile(
        title: 'Profile',
        icon: Icons.person_outline,
        onPressed: () {}),
    CommonListTile(
        title: 'Contact Us',
        icon: Icons.phone_in_talk_outlined,
        onPressed: () {}),];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 0.70,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top * 0.3,
                    bottom: MediaQuery.of(context).padding.bottom * 0.3),
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 23,
                  ),
                  title: Text('CAS',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),
                  subtitle: Text('arslanasghar@gmail.com',softWrap: true,style: TextStyle(fontSize: 15),),
                ),
              ),
              // Column(
              //   children: [
              //     CommonListTile(
              //       title: 'Home',
              //       icon: Icons.home_outlined,
              //       onPressed: () {
              //         print('pressed');
              //       },
              //     ),
              //     CommonListTile(
              //         title: 'Categories',
              //         icon: Icons.fastfood_outlined,
              //         onPressed: () {}),
              //     CommonListTile(
              //         title: 'Best Deals For you',
              //         icon: Icons.clean_hands,
              //         onPressed: () {}),
              //     CommonListTile(
              //         title: 'My Orders',
              //         icon: Icons.shopping_basket_outlined,
              //         onPressed: () {}),
              //     CommonListTile(
              //         title: 'Cart',
              //         icon: Icons.shopping_cart_outlined,
              //         onPressed: () {}),
              //     CommonListTile(
              //         title: 'Profile',
              //         icon: Icons.person_outline,
              //         onPressed: () {}),
              //     CommonListTile(
              //         title: 'Contact Us',
              //         icon: Icons.phone_in_talk_outlined,
              //         onPressed: () {}),
              //   ],
              // ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                    itemCount: list.length,
                    itemBuilder: (context, index){
                      return list[index];
                    }),
              ),
              CommonListTile(
                  title: 'Sign Out', icon: Icons.logout, onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}