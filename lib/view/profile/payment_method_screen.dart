import 'package:flutter/material.dart';
import 'package:rika/config/colors.dart';
import 'package:get/get.dart';
import 'package:rika/view/profile/add_card_screen.dart';

import '../../config/text_style.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: ConstColors.textColor,
            size: 20,
          ),
        ),
        title:  Text(
          "Payment Methods",
          style: pSemiBold20.copyWith(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Don’t have any card :)",
              style: pSemiBold20.copyWith(fontSize: 24),

            ),
          ),
          const SizedBox(height: 24),
          Center(
            child: Text(
              "It’s seems like you don’t add any credit\nor debit card. You may easily add card.",
              style: pRegular14.copyWith(
                fontSize: 16,
                height: 1.5,
                color: ConstColors.text2Color,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40),
          InkWell(
            onTap: () {
              Navigator.push(context , MaterialPageRoute(builder: (context) =>
              const AddCardScreen(),
              )
              );
            },
            child: Container(
              height: 38,
              width: Get.width / 1.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: ConstColors.primaryColor,
                ),
              ),
              child:  Center(
                child:  Text(
                  "ADD CREDIT CARDS",
                  style: pSemiBold18.copyWith(
                    fontSize: 14,
                    color: ConstColors.primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
