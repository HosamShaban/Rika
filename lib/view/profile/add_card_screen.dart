import 'package:flutter/material.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/view/home/home_view.dart';
import 'package:rika/widget/payment_tab.dart';
import '../../config/colors.dart';
import '../../config/text_style.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
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
        title: Text(
          "Add Card",
          style: pSemiBold20.copyWith(),

        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PaymentTab(
              image: DefaultImages.payment1,
              title: "PayPal",
              subTitle: "Default Payment",
              ontap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context) =>
                    AlertDialog(
                      insetPadding: const EdgeInsets.only(left: 40, right: 40),
                      titlePadding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      content: Container(
                        height: 205,
                        decoration: const BoxDecoration(
                          color: ConstColors.whiteFontColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(height: 20),
                            Center(
                              child: Text(
                                "Successful!",
                                style: pSemiBold18.copyWith(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "You have successfully your\nConfirm Payment send!",
                              style: pRegular14.copyWith(
                                fontSize: 15,
                                color: ConstColors.text2Color,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 16),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22.0),
                              ),
                              color: ConstColors.primaryColor,
                              child:  Text(
                                "Continue Shopping",
                                style: pSemiBold18.copyWith(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ),
                );
              },
            ),
            PaymentTab(
              image: DefaultImages.payment2,
              title: "MasterCard",
              subTitle: "Not Default",
              ontap: () {},
            ),
            PaymentTab(
              image: DefaultImages.payment3,
              title: "Visa",
              subTitle: "Not Default",
              ontap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
