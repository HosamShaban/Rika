import 'package:flutter/material.dart';
import 'package:rika/config/colors.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/widget/custom_text_field.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool value = false;
  void checkBoxCallBack(bool? checkBoxState) {
    if (checkBoxState != null) {
      setState(() {
        value = checkBoxState;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 50.0, bottom: 40.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                  'images/logo.png',
                  width: 155,
                  height: 100,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Create an new account",
                  style:
                      TextStyle(fontSize: 14.0, color: ConstColors.text2Color),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: "Hosam Shaban",
              inputType: TextInputType.emailAddress,
              image: DefaultImages.phone,
              obscureText: false,
              labelText: "User Name",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: "rikafashionshop@gmail.com",
              inputType: TextInputType.emailAddress,
              image: DefaultImages.phone,
              obscureText: false,
              labelText: "Email",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: "Password",
              inputType: TextInputType.visiblePassword,
              image: DefaultImages.eye,
              obscureText: true,
              labelText: "Password",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: "Confirm Password",
              inputType: TextInputType.visiblePassword,
              image: DefaultImages.eye,
              obscureText: true,
              labelText: "Confirm Password",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              const SizedBox(
                width: 10,
              ),
              const Text(
                'By creating an account you have to agree \n with our them & condication.',
                style: TextStyle(fontSize: 14, color: ConstColors.text2Color),
              ),
              const SizedBox(width: 10),
              Checkbox(value: value, onChanged: checkBoxCallBack),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.black87,
                    child: Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 120),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
