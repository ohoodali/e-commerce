import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled/controllers/cart_controller.dart';
import 'package:untitled/pages/CategoryScreen.dart';
import 'package:untitled/pages/FavoritesScreen.dart';
import 'package:untitled/pages/HomeScreen.dart';
import 'package:untitled/pages/Setting.dart';
import 'package:untitled/pages/cart_screen.dart';
import 'package:untitled/widget/theme.dart';

import 'controllers/theme_controller.dart';

void main() {
  runApp(MyApp());
  /*  MaterialApp(
    home: AnimatedSplashScreen(
      splash: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Column(
          children: [
            Text(
              (' My'),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Text(('Shopping.'),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ]),
      nextScreen: HomePage(),
      backgroundColor: Get.isDarkMode ? Colors.greenAccent : Colors.green,
      splashTransition: SplashTransition.fadeTransition,
      duration: 5000,
    ),
  )*/
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final cartController = Get.lazyPut(() => CartController());

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bottom NavBar Demo',
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeController().themeDataGet,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cartController = Get.find<CartController>();

  int pageIndex = 0;

  final pages = [
    HomeScreen(),
    const CategoryScreen(),
    FavoritesScreen(),
    const Setting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Container(),
        actions: [
          Obx(
            () => Badge(
              position: BadgePosition.topEnd(top: 0, end: 3),
              animationDuration: const Duration(milliseconds: 300),
              animationType: BadgeAnimationType.slide,
              badgeContent: Text(
                cartController.quantity().toString(),
                style: const TextStyle(color: Colors.white),
              ),
              child: IconButton(
                onPressed: () {
                  Get.to(CartScreen());
                },
                icon: Icon(Icons.shopping_cart),

                // icon: Image.asset('assets/images/shop.png'),
              ),
            ),
          ),
        ],
        backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
        //  title: Text(controller.title[controller.currentIndex.value]),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.work_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.work_outline_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.lightbulb,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.lightbulb,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
