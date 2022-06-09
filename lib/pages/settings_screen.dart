import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../setting/dark_mode_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Colors.black45 : Colors.green,
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          DarkModeWidget(),
          const SizedBox(
            height: 20,
          ),
          //   LanguageWidget(),
          const SizedBox(
            height: 20,
          ),
          // LogOutWidget(),
        ],
      ),
    );
  }
}
