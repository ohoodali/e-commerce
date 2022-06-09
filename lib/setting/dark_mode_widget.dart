import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/settings_controller.dart';
import '../controllers/theme_controller.dart';
import '../widget/text_utils.dart';
import '../widget/theme.dart';

class DarkModeWidget extends StatelessWidget {
  DarkModeWidget({Key? key}) : super(key: key);
  final controller = Get.put(SettingController());

  //final controller = Get.find<SettingController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconWidget(),
          Switch(
            activeTrackColor: Get.isDarkMode ? kCOlor2 : mainColor,
            activeColor: Get.isDarkMode ? mainColor : pinkClr,
            value: controller.swithchValue.value,
            onChanged: (value) {
              ThemeController().changesTheme();
              controller.swithchValue.value = value;
            },
          ),
        ],
      ),
    );
  }

  Widget buildIconWidget() {
    return Material(
      color: Colors.transparent,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: darkSettings,
            ),
            child: const Icon(
              Icons.dark_mode,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          TextUtils(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            text: "Dark Mode".tr,
            color: Get.isDarkMode ? Colors.white : Colors.black,
            underLine: TextDecoration.none,
          ),
        ],
      ),
    );
  }
}
