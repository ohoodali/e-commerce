import 'package:flutter/material.dart';
import 'package:untitled/pages/settings_screen.dart';
import 'package:untitled/widget/app_drawer.dart';
import 'package:untitled/widget/text_utils.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        title: TextUtils(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          text: "My Shopping",
          color: Colors.black,
          underLine: TextDecoration.none,
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      drawer: AppDrawer(),
      body: SettingsScreen(),
    );
  }
}
