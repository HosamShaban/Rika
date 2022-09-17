import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/config/colors.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/view/auth/login_screen.dart';
import 'package:rika/view/profile/profile_pic.dart';
import 'package:rika/widget/custom_text_field.dart';
import 'package:rika/widget/dark_tab.dart';
import 'package:rika/widget/notification_tab.dart';
import 'package:rika/controller/profile_controller.dart';

import 'profile_menu.dart';

enum GenderType { male, female }

class ProfileSettingScreen extends StatefulWidget {
  const ProfileSettingScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSettingScreen> createState() => _ProfileSettingScreenState();
}

class _ProfileSettingScreenState extends State<ProfileSettingScreen> {
  final profileController = Get.put(ProfileController());

  GenderType? _genderType;

  @override
  Widget build(BuildContext context) {
    final profileController = Get.put(ProfileController());


    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const Padding(
              padding:  EdgeInsets.only(top: 50),
              child:  ProfilePic(),

    ),
            const SizedBox(height: 5),
            const Text('Upload image',
      style: TextStyle(fontWeight: FontWeight.normal , fontSize: 14 , color: Colors.black),),
    const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomTextField(
                controller: TextEditingController(),
                hintText: "Hasan Mahmud",
                inputType: TextInputType.emailAddress,
                image: DefaultImages.phone,
                obscureText: false,
                labelText: "Name",
              ),
            ),
            const SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<GenderType>(
                      contentPadding:const EdgeInsets.only(left: 10  , right: 20 , top: 8),
                      value: GenderType.male,
                      tileColor: const Color(0xFFAAAAAA),
                      activeColor: Colors.white,
                      dense: true,
                      groupValue: _genderType,
                      selectedTileColor: ConstColors.primaryColor,
                      title: Text(GenderType.male.name),
                      onChanged: (val){
                        setState(() {
                          _genderType = val;
                        });
                      }),
                ),
                const SizedBox(width: 9),
                Expanded(
                  child: RadioListTile<GenderType>(
                      contentPadding:const EdgeInsets.only(left: 10  , right: 20 ),
                      value: GenderType.female,
                      tileColor: const Color(0xFFAAAAAA),
                      activeColor: Colors.white,
                      selectedTileColor: ConstColors.primaryColor,
                      groupValue: _genderType,
                      title: Text(GenderType.female.name),
                      onChanged: (val){
                        setState(() {
                          _genderType = val;

                        });
                      }),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(bottom: 10 , left: 18 , right: 18),
              child: CustomTextField(
                controller: TextEditingController(),
                hintText: "22 Year",
                inputType: TextInputType.number,
                image: DefaultImages.eye,
                obscureText: true,
                labelText: "Age",
              ),
            ),
            const SizedBox(height: 5,),
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
           const Padding(
             padding: EdgeInsets.only(right: 240 ),
             child: Text('Settings' ,textAlign: TextAlign.left,
               style: TextStyle(fontSize: 22 , color: Colors.black  , fontWeight: FontWeight.bold),),
           ),
            const SizedBox(height: 10),
            ProfileMenu(
              text: "Language",
              icon: DefaultImages.translation,
              press: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileSettingScreen()))
              },
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 20 , left: 30),
              child: NotificationTab(
                widget: CupertinoSwitch(
                  onChanged: (value) {
                    setState(() {
                      profileController.isPush.value = value;
                    });
                  },
                  activeColor: ConstColors.primaryColor,
                  value: profileController.isPush.value,
                ),
                title: "Notification",
                ontap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20 , left: 30),
              child: DarkTab(
                widget: CupertinoSwitch(
                  onChanged: (value) {
                    setState(() {
                      profileController.isnotify.value = value;
                    });
                  },
                  activeColor: ConstColors.primaryColor,
                  value: profileController.isnotify.value,
                ),
                title: "Dark Mood",
                ontap: () {},
              ),
            ),

            const SizedBox(height: 5),

            ProfileMenu(
              text: "Help Center",
              icon: DefaultImages.question,
              press: () {},
            ),
            const SizedBox(height: 30),

            SizedBox(
              height: 50,
              width: 320,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: ConstColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text('Log Out'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.logout,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
           const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
/*

 */
