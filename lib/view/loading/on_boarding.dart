import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rika/config/colors.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/config/text_style.dart';
import 'package:rika/controller/loading_controller.dart';
import 'package:rika/view/auth/login_screen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final loadingController = Get.put(LoadingController());
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.whiteFontColor,
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  itemCount: 3,
                  physics: const ClampingScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() {
                      loadingController.pageIndex!.value = value;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: loadingController.pageIndex!.value == 0
                              ? 350
                              : loadingController.pageIndex!.value == 1
                                  ? 350
                                  : 350,
                          child: Image.asset(
                            loadingController.pageIndex!.value == 0
                                ? DefaultImages.loading1
                                : loadingController.pageIndex!.value == 1
                                    ? DefaultImages.loading2
                                    : DefaultImages.loading3,
                          ),
                        ),
                        SizedBox(
                            height: loadingController.pageIndex!.value == 0
                                ? 10
                                : 10),
                        Text(
                          loadingController.pageIndex!.value == 0
                              ? "20% Discount \n New Arrival Product"
                              : loadingController.pageIndex!.value == 1
                                  ? "Take Advantage \n Of The Offer Shopping"
                                  : "All Types Offers \n Within Your Reach",
                          style: pSemiBold20.copyWith(fontSize: 30),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 1),
                        Text(
                          loadingController.pageIndex!.value == 0
                              ? "Publish up your selfies to make yourself \n more beautiful with this app."
                              : loadingController.pageIndex!.value == 1
                                  ? "Publish up your selfies to make yourself \n more beautiful with this app."
                                  : "Publish up your selfies to make yourself \n more beautiful with this app.",
                          style: pRegular14.copyWith(
                            fontSize: 15,
                            color: ConstColors.text2Color,
                            height: 1.2,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 50),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, bottom: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 8,
                      width: 12,
                      decoration: BoxDecoration(
                        color: loadingController.pageIndex!.value == 0
                            ? ConstColors.primaryColor
                            : ConstColors.text2Color.withOpacity(0.20),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 8,
                      width: 12,
                      decoration: BoxDecoration(
                        color: loadingController.pageIndex!.value == 1
                            ? ConstColors.primaryColor
                            : ConstColors.text2Color.withOpacity(0.20),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      height: 8,
                      width: 12,
                      decoration: BoxDecoration(
                        color: loadingController.pageIndex!.value == 2
                            ? ConstColors.primaryColor
                            : ConstColors.text2Color.withOpacity(0.20),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ConstColors.primaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ));
        },
        child: const Icon(Icons.arrow_forward_outlined, color: Colors.white),
      ),
    );
  }
}
