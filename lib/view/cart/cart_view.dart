import 'package:flutter/material.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/config/text_style.dart';
import 'package:rika/view/cart/components/checkout_card.dart';
import 'components/body.dart';

class CartView extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "My Cart",
        style: pSemiBold20.copyWith(color: Colors.black87),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(DefaultImages.menu),
      ),
      actions: [
        Image.asset('images/cart.png'),
      ],
    );
  }
}
