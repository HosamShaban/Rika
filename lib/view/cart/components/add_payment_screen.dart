import 'package:flutter/material.dart';
import 'package:rika/config/colors.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/config/text_style.dart';
import 'package:rika/view/profile/add_card_screen.dart';
import 'package:rika/widget/catd_textfield.dart';
import 'package:rika/widget/custom_text_field.dart';


class AddPyamentScreen extends StatefulWidget {
  const AddPyamentScreen({Key? key}) : super(key: key);

  @override
  State<AddPyamentScreen> createState() => _AddPyamentScreenState();
}

class _AddPyamentScreenState extends State<AddPyamentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: ConstColors.textColor,
            size: 25,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: const ClampingScrollPhysics(),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          "Add your payment methods",
                          style: pSemiBold20.copyWith(
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Center(
                        child: Text(
                          "This card will only be charged when\nyou place an order.",
                          style: pSemiBold18.copyWith(
                            fontSize: 16,
                            color: ConstColors.text2Color,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const CardTextField(
                        hintText: "4343 4343 4343 4343",
                        image: DefaultImages.addCard,
                        inputType: TextInputType.number,
                        labelText: "",
                        obscureText: false,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          Expanded(
                            child: CustomTextField(
                              hintText: "MM/YY",
                              image: "",
                              inputType: TextInputType.number,
                              labelText: "",
                              obscureText: false,
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: CustomTextField(
                              hintText: "CVC",
                              image: "",
                              inputType: TextInputType.number,
                              labelText: "",
                              obscureText: false,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: MaterialButton(
              minWidth: 300,
              height: 50,
              color: ConstColors.primaryColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              child: const Text("ADD CARD" ,style: TextStyle(color: Colors.white), ),
              onPressed: () {
                Navigator.push(context , MaterialPageRoute(builder: (context) =>
                const AddCardScreen(),
                ));
              },
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}