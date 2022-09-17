import 'package:flutter/material.dart';
import 'package:rika/view/profile/profile_setting_screen.dart';
import '../../config/default_image.dart';
import 'body.dart';

class ProfileView extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(DefaultImages.menu),
        ),
        actions:  [
          IconButton(icon: const Icon(Icons.settings , color: Colors.black, size: 20,),
              onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => const ProfileSettingScreen()));
          }),

        ],
      ),
      body: Body(),
    );
  }
}