import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rika/model/products_model.dart';

class ProductController extends GetxController {
  RxList<Product> cartProducts = <Product>[].obs;
  RxInt totalPrice = 0.obs;
  RxInt currentBottomNavItemIndex = 0.obs;
  RxInt productImageDefaultIndex = 0.obs;



  void addToCart(Product product) {
    cartProducts.add(product);
  }

  void increaseItem(int index) {
    Product product = cartProducts[index];
    update();
  }

  bool get isZeroQuantity {
    return cartProducts.firstRebuild;
  }

  bool isPriceOff(Product product) {
    if (product.isFavourite != null) {
      return true;
    } else {
      return false;
    }
  }

  bool get isEmptyCart {
    if (cartProducts.isEmpty || isZeroQuantity) {
      return true;
    } else {
      return false;
    }
  }

  bool isNominal(Product product) {
    if (product.price ?.isInfinite != null) {
      return true;
    } else {
      return false;
    }
  }

  void switchBetweenProductImages(int index) {
    productImageDefaultIndex.value = index;
  }

}