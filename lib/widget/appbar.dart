import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      leading: Icon(
        Icons.menu,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        "My Shopping",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
    );
  }
}
