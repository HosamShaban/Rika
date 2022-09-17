import 'package:flutter/material.dart';
import 'package:rika/config/colors.dart';
import 'package:rika/controller/home_controller.dart';
import 'package:rika/controller/tab_controller.dart';
import 'package:rika/view/home/home_view.dart';
import 'package:rika/view/cart/cart_view.dart';
import 'package:rika/view/profile/profile_view.dart';
import 'package:rika/view/Notification/notification_view.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);


  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final tabController = Get.put(TabScreenController());
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final homeController = Get.put(HomeController());
  int _selectedindex = 0;
  @override
  void initState() {
    tabController.tabFlag!.value = 0;
    super.initState();
  }

   final List<Widget> _navScreen = [
     const HomeView(),
     CartView(),
     const NotificationView(),
     ProfileView(),
  ];

  onTap(int index){
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: ConstColors.whiteFontColor,
      body: _navScreen[_selectedindex],
          bottomNavigationBar: Container(
            height: 73,
            width: Get.width,
            decoration: BoxDecoration(
              color: ConstColors.whiteFontColor,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.04),
                  offset: const Offset(0, -2),
                ),
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.10),
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GNav(
                    gap: 6,
                    backgroundColor: ConstColors.whiteFontColor,
                    rippleColor: ConstColors.primaryColor,
                    color: ConstColors.primaryColor,
                    tabBackgroundColor:const Color(0xffEEEEEE),
                    padding:const EdgeInsets.symmetric(horizontal: 20 , vertical:10.0 ),
                    selectedIndex: _selectedindex,
                    onTabChange: onTap,
                    tabs: const [
                      GButton(
                        icon : Icons.home,
                        text: 'Home',

                      ),
                      GButton(
                        icon: Icons.shopping_cart,
                        text: 'Cart',
                      ),
                      GButton(
                        icon: Icons.notifications_sharp,
                        text: 'Notify',
                      ),
                      GButton(
                        icon: Icons.person_rounded,
                        text: 'Profile',
                      )
                    ]
                )
              ],
            ),
          ),
    );
  }
}
