import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/pages/CategoryScreen.dart';
import 'package:untitled/pages/FavoritesScreen.dart';
import 'package:untitled/pages/HomeScreen.dart';
import 'package:untitled/pages/Setting.dart';
import 'package:untitled/widget/text_utils.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Get.isDarkMode ? Colors.grey : Colors.green,
      child: Column(
        children: <Widget>[
          AppBar(
            title: TextUtils(
              text: 'Hello My Friend',
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              underLine: TextDecoration.none,
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Get.isDarkMode ? Colors.grey : Colors.greenAccent,
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.shop,
                color: Get.isDarkMode ? Colors.black : Colors.white),
            title: TextUtils(
              text: 'My Shop',
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              underLine: TextDecoration.none,
            ),
            onTap: () {
              Get.to(() => HomeScreen());
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.payment,
                color: Get.isDarkMode ? Colors.black : Colors.white),
            title: TextUtils(
              text: 'My Orders',
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              underLine: TextDecoration.none,
            ),
            onTap: () {
              Get.to(() => const CategoryScreen());
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.favorite,
                color: Get.isDarkMode ? Colors.black : Colors.white),
            title: TextUtils(
              text: 'My favorites',
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              underLine: TextDecoration.none,
            ),
            onTap: () {
              Get.to(() => FavoritesScreen());
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.search,
                color: Get.isDarkMode ? Colors.black : Colors.white),
            title: TextUtils(
              text: 'My Search',
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              underLine: TextDecoration.none,
            ),
            onTap: () {
              Get.to(() => const Setting());
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.lightbulb,
                color: Get.isDarkMode ? Colors.black : Colors.white),
            title: TextUtils(
              text: 'My Settings',
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              underLine: TextDecoration.none,
            ),
            onTap: () {
              // Get.to(() => SettingsScreen());
            },
          ),
        ],
      ),
    );
  }
}
