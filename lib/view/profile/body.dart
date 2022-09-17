import 'package:flutter/material.dart';
import 'package:rika/config/colors.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/view/Notification/notification_view.dart';
import 'package:rika/view/auth/login_screen.dart';
import 'package:rika/view/profile/profile_setting_screen.dart';
import 'profile_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
      //   Row(
      //     children: [
      //       SizedBox(
      //       height: 115,
      //       width: 100,
      //       child: Stack(
      //         fit: StackFit.expand,
      //         clipBehavior: Clip.none,
      //         children: [
      //            Image.asset("images/p.png"),
      //         ],
      //       ),
      // ),
      //      const SizedBox(width: 1),
      //       const Padding(
      //         padding: EdgeInsets.only(bottom: 30),
      //         child: Text("Hasan Mahmud" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 18),),
      //       ),
      //         const Text("rikafashionshop@gmail.com" , style: TextStyle(color: ConstColors.text2Color, fontSize: 13 ),textAlign: TextAlign.right),
      //
      //     ],
      //   ),
          ListTile(
            leading: Image.asset("images/p.png"),
            title: const Text("Hasan Mahmud" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 18),),
            subtitle:const Padding(
              padding:  EdgeInsets.only(top: 2 , right: 90),
              child:  Text("rikafashionshop@gmail.com" , style: TextStyle(color: ConstColors.text2Color, fontSize: 13 ),textAlign: TextAlign.right),
            ),

          ),
          const SizedBox(height: 20),
          ProfileMenu(
            text: "Personal Details",
            icon: DefaultImages.profile,
            press: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileSettingScreen()))
          },
          ),
          ProfileMenu(
            text: "Notifications",
            icon: DefaultImages.notify,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationView()));
            },
          ),
          ProfileMenu(
            text: "Settings",
            icon: DefaultImages.setting,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileSettingScreen()));
            },
          ),
          ProfileMenu(
            text: "Help Center",
            icon: DefaultImages.question,
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: DefaultImages.logout,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));

            },
          ),
        ],
      ),
    );
  }
}