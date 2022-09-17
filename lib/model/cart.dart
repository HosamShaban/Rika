import 'package:rika/config/default_image.dart';

import 'products_model.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(
      product: Product(
          id: 1,
          title: "Headphone",
          description: "Headphone",
          price: 150,
          images: [DefaultImages.ch5],
          category: Category(id: 1, name: "light", image: "images/ch5.png"),
          categoryId: 1),
      numOfItem: 2),
  Cart(
      product: Product(
          id: 2,
          title: "Roller Rabbit",
          description: "Vado Odelle Dress",
          price: 98,
          images: [DefaultImages.ch2],
          category: Category(id: 2, name: "Madewell", image: "images/ch2.png"),
          categoryId: 2),
      numOfItem: 1),
  Cart(
      product: Product(
          id: 3,
          title: "Axel Arigato",
          description: "Clean 90 Triple Sneakers",
          price: 120,
          images: [DefaultImages.ch4],
          category: Category(id: 3, name: "Nick", image: "images/ch3.png"),
          categoryId: 3),
      numOfItem: 1),
];
