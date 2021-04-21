import 'package:flutter/material.dart';

class CommonListTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onPressed;

  CommonListTile(
      {@required this.title, @required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {


    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.black,style: BorderStyle.solid),
      ),

      onTap: onPressed,
      leading: Icon(icon),
      title: Text(title),
    );
  }
}
