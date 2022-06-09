import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/main.dart';
import 'package:untitled/widget/delivery_continer_widget.dart';
import 'package:untitled/widget/payment_method_widget.dart';
import 'package:untitled/widget/text_utils.dart';
import 'package:untitled/widget/theme.dart';

import '../controllers/cart_controller.dart';

class PayMentScreen extends StatelessWidget {
  PayMentScreen({Key? key}) : super(key: key);
  //Get.put(PayMentController())
  final cartController = Get.find<CartController>();
  final payMentController = Get.put<CartController>;
/*
  final payMentController2 = Get.find<PayMentController>;
*/
  // Get.lazyPut(()=>PayMentController())
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        title: const Text("PayMent"),
        elevation: 0,
        backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextUtils(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                text: "Shipping to",
                color: Get.isDarkMode ? Colors.white : Colors.black,
                underLine: TextDecoration.none,
              ),
              const SizedBox(
                height: 20,
              ),
              const DeliveryContinerWidget(),
              const SizedBox(
                height: 20,
              ),
              TextUtils(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                text: "Payment method",
                color: Get.isDarkMode ? Colors.white : Colors.black,
                underLine: TextDecoration.none,
              ),
              const SizedBox(
                height: 20,
              ),
              const PayMentMethodWidget(),

              Center(
                child: TextUtils(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  text: "Total: ${cartController.total}\$",
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  underLine: TextDecoration.none,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      primary: Get.isDarkMode ? pinkClr : mainColor,
                    ),
                    onPressed: () {
                      AwesomeDialog(
                              context: context,
                              animType: AnimType.SCALE,
                              dialogType: DialogType.SUCCES,
                              title: 'Success Payment',
                              btnOkText: 'OK',
                              btnOkIcon: Icons.check,
                              dismissOnBackKeyPress: false,
                              btnOkOnPress: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => HomePage()));
                              },
                              btnOkColor: Colors.green,
                              buttonsBorderRadius: BorderRadius.circular(20))
                          .show();
                    },
                    child: const Text(
                      "Pay Now",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              // GetBuilder<PayMentController>(
              //   builder: (_) {
              //     if (payMentController.paymentItems.isNotEmpty) {
              //       return Center(
              //         child: GooglePayButton(
              //           width: 200,
              //           height: 50,
              //           paymentConfigurationAsset: 'gpay.json',
              //           paymentItems: payMentController.paymentItems,
              //           style: GooglePayButtonStyle.black,
              //           type: GooglePayButtonType.pay,
              //           margin: const EdgeInsets.only(top: 15.0),
              //           onPaymentResult: (data) {
              //             print(data);
              //           },
              //           loadingIndicator: const Center(
              //             child: CircularProgressIndicator(),
              //           ),
              //         ),
              //       );
              //     } else {
              //       return Center(
              //         child: SizedBox(
              //           height: 50,
              //           width: 150,
              //           child: ElevatedButton(
              //             style: ElevatedButton.styleFrom(
              //               shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(10),
              //               ),
              //               elevation: 0,
              //               primary: Get.isDarkMode ? pinkClr : mainColor,
              //             ),
              //             onPressed: () {},
              //             child: const Text(
              //               "Pay Now",
              //               style: TextStyle(
              //                 fontSize: 22,
              //                 color: Colors.white,
              //               ),
              //             ),
              //           ),
              //         ),
              //       );
              //     }
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
