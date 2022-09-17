import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rika/config/colors.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/config/text_style.dart';
import 'package:rika/controller/home_controller.dart';
import 'package:rika/model/products_model.dart';
import 'package:rika/view/home/electronics_screen.dart';
import 'package:rika/widget/category_card.dart';

class HomeView extends StatefulWidget {
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const HomeView({super.key, this.scaffoldKey});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeController = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
  }

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
          child: Image.asset(DefaultImages.menu),
        ),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        children: [
          const SizedBox(height: 5),
          SizedBox(
            height: 45,
            child: TextFormField(
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cairo',
              ),
              cursorColor: ConstColors.primaryColor,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(DefaultImages.search),
                ),
                fillColor: const Color(0xffFBFBFB),
                filled: true,
                contentPadding: const EdgeInsets.only(
                    left: 10, top: 16, bottom: 10, right: 10),
                isDense: true,
                hintText: "Search Categories",
                hintStyle: pRegular14.copyWith(
                  fontSize: 16,
                  color: ConstColors.text2Color,
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color(0xffF3F2F2),
                  ),
                ),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color(0xffF3F2F2),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 1,
                    color: ConstColors.primaryColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 450,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 205,
                ),
                itemCount: homeController.category.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final item = homeController.category.toList()[index];
                  return InkWell(
                    onTap: () {
                      List<Product> data = [];

                      for (var prod in homeController.products) {
                        if (item.id == prod.category?.id) {
                          data.add(prod);
                        }
                      }

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ElectronicScreen(
                                  data: data,
                                  aTitle: homeController.category
                                          .toList()[index]
                                          .name ??
                                      "")));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CategoryCard(
                        image: homeController.category.toList()[index].image!,
                        name:
                            homeController.category.toList()[index].name ?? "",
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
