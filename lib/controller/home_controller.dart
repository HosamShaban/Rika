import 'package:get/get.dart';
import 'package:rika/data/responses.dart';
import 'package:rika/model/ItemModel.dart';
import 'package:rika/model/products_model.dart';

class HomeController extends GetxController {

  List<Product> products = [];
  Set<Category> category = {};
  List<ShopItemModel> items = [];
  List<ShopItemModel> cartItems = [];
  bool isLoading = true;



  Future<void> getProducts() async {
    products = await Responses.instance.fetchProduct();
    for(Product product in products){
      category.add(product.category!);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getProducts();
    // getCategory();
  }

  getItem(int id) {
    return items.singleWhere((element) => element.id == id);
  }

  loadDB() async {
    getCardList();
  }



  bool isAlreadyInCart(id) {
    return cartItems.indexWhere((element) => element.shopId == id) > -1;
  }

  getCardList() async{
      cartItems.clear();
      update();
    }
  }



