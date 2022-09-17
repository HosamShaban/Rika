import 'package:flutter/material.dart';
import 'package:rika/config/colors.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/view/auth/successfull_screen.dart';
import 'package:rika/widget/custom_text_field.dart';
import 'package:rika/widget/social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  "Welcome!",
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 20),
                const Text(
                  "please login or sign up to continue our app",
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
              hintText: "rikafashionshop@gmail.com",
              inputType: TextInputType.emailAddress,
              image: DefaultImages.phone,
              obscureText: false,
              labelText: "Email",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10 , left: 18 , right: 18),
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: "Password",
              inputType: TextInputType.visiblePassword,
              image: DefaultImages.eye,
              obscureText: true,
              labelText: "Password",
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
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
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Success()))
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                child: const Divider(
                  color: Colors.black,
                  height: 36,
                ),
              ),
            ),
            const Text("or"),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: const Divider(
                    color: Colors.black,
                    height: 33,
                  )),
            ),
          ]),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                SocialButton(
                  color: const Color(0xff395998),
                  image: DefaultImages.facebook,
                  onTap: () {},
                  text: "Continue with Facebook",
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                SocialButton(
                  color: Colors.black87,
                  image: DefaultImages.google,
                  onTap: () {},
                  text: "Continue with Google",
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: <Widget>[
                SocialButton(
                  color: Colors.blueGrey,
                  image: DefaultImages.apple,
                  onTap: () {},
                  text: "Continue with Apple",
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
