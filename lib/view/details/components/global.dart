import 'package:flutter/material.dart';

Color bgColor = const Color(0xfff5f5f5);

class Categories {
  final String? title;
  final int? id;
  final List<SubCategories>? subCat;

  Categories({this.title, this.id, this.subCat});
}

class SubCategories {
  final String? title;
  final int? id;

  SubCategories({this.title, this.id});
}

List<Categories> categories = [
  Categories(
    title: 'Electronics',
    id: 0,
    subCat: [
      SubCategories(id: 0, title: 'Phones'),
      SubCategories(id: 1, title: 'Laptops'),
      SubCategories(id: 2, title: 'Drones'),
      SubCategories(id: 3, title: 'Graphics Cards'),
      SubCategories(id: 4, title: 'CPU'),
      SubCategories(id: 5, title: 'Motherboard'),
    ],
  ),
  Categories(
    title: 'Shoes',
    id: 1,
    subCat: [
      SubCategories(id: 0, title: "OXFORD"),
      SubCategories(id: 1, title: "DERBY"),
      SubCategories(id: 2, title: "MEN’S BOOTS"),
      SubCategories(id: 3, title: "MOCCASIN"),
      SubCategories(id: 4, title: "LOAFER"),
      SubCategories(id: 5, title: "BLUCHER"),
      SubCategories(id: 6, title: "BOAT SHOE"),
      SubCategories(id: 7, title: "MONK"),
      SubCategories(id: 8, title: "STRAP"),
      SubCategories(id: 9, title: "BUDAPESTER"),
      SubCategories(id: 10, title: "BUCKLED SHOES"),
      SubCategories(id: 11, title: "LACE-UP SHOES"),
      SubCategories(id: 12, title: "SLIP-ON SHOES"),
    ],
  ),
  Categories(
    title: 'Cloths',
    id: 2,
    subCat: [
      SubCategories(id: 0, title: "Jackets and coats"),
      SubCategories(id: 1, title: "Trousers and shorts"),
      SubCategories(id: 2, title: "Underwear"),
      SubCategories(id: 3, title: "Suits"),
      SubCategories(id: 4, title: "Skirts and dresses"),
      SubCategories(id: 5, title: "Sweaters and waistcoats"),
    ],
  ),
  Categories(
    title: 'Home',
    id: 3,
    subCat: [
      SubCategories(id: 0, title: "Microwave oven"),
      SubCategories(id: 1, title: "Stacked washing machine \& clothes dryer"),
      SubCategories(id: 2, title: "Gas fireplace"),
      SubCategories(id: 3, title: "Refrigerators"),
      SubCategories(id: 4, title: "Vacuum cleaner"),
      SubCategories(id: 5, title: "Electric water heater tank"),
      SubCategories(id: 6, title: "Small twin window fan"),
    ],
  ),
];

class Product {
  final String? mainImage;
  final List<String>? images;
  final List<String>? tags;
  final List<Color>? colors;
  final List<int>? size;
  final String? title;
  final String? description;
  final String? price;
  final double? rating;
  Product({
    this.rating,
    this.price,
    this.mainImage,
    this.images,
    this.tags,
    this.colors,
    this.size,
    this.title,
    this.description
  });
}

List<String> homeHero = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJNpAgy_1pUywRj139t5LFXc3Rr8SSJqON5ZzI8wejgADRtAdvPw&s",
  "https://www.mybucketdeals.com/images/banner-productxx.jpg",
  "http://business-newsupdate.com/img/business/wuxi-atu-and-genemedicine-partner-to-develop-oncolytic-virus-products.jpg",
  "https://46ba123xc93a357lc11tqhds-wpengine.netdna-ssl.com/wp-content/uploads/2019/09/amazon-alexa-event-sept-2019.jpg",
];

List<Product> products = [
  Product(
    title: "Hand Bag",
    price: "USD. 400.00",
    images: [
      'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_5_flat.jpg',
      'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_3_angle.jpg',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage: 'http://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2013/06/cd_3_angle.jpg',
    size: [36,37,38,39,40,41,42,43,44,45],
    tags: ['Product', 'Price'],
    rating: 3.5,
  ),
  Product(
    title: "Adidas Superstar",
    price: "USD.159.00",
    images: [
      'https://cdn.theschoollocker.com.au/media/catalog/product/cache/1/image/1200x1200/9df78eab33525d08d6e5fb8d27136e95/f/3/f36392_ftw_photo_side-medial-center_white.jpg',
      'https://assets.adidas.com/images/w_280,h_280,f_auto,q_auto:sensitive/3d0933f855c445fea224aad600bac8b7_9366/superstar-shoes.jpg',
      'https://assets.adidas.com/images/w_280,h_280,f_auto,q_auto:sensitive/31cf91f6e16c4f0aa11caad6009a4590_9366/superstar-shoes.jpg'
    ],
    colors: [Colors.black, Colors.white, Colors.yellow],
    mainImage: 'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png',
    size: [39,40,41,42,43,44,45],
    tags: ['Product', 'Shoes'],
    rating: 3.5,
    description: "Engineered to crush any movement-based workout, these On\n sneakers enhance the label's original Cloud sneaker with cutting \n edge technologies for a pair."
  ),
  Product(
    title: "Hand Bag",
    price: "USD. 400.00",
    images: [
      'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
      'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43bf85.png',
      'https://img.favpng.com/23/4/0/tote-bag-red-leather-handbag-png-favpng-ki0rQC3dTsbB0fdQT3WvmvxrU.jpg',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage: 'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
    size: [1,2,3,4,5,6,7,8,9],
    tags: ['Product', 'Bag', 'HandBag', 'Price', 'Quality'],
    rating: 3.5,
  ),
  Product(
    title: "Adidas Superstar",
    price: "USD. 59.00",
    images: [
      'https://www.jing.fm/clipimg/full/35-352776_adidas-shoes-clipart-picsart-png-shoes-png-for.png',
      'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png',
      'https://www.jing.fm/clipimg/full/35-352776_adidas-shoes-clipart-picsart-png-shoes-png-for.png',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage: 'https://www.jing.fm/clipimg/full/35-352776_adidas-shoes-clipart-picsart-png-shoes-png-for.png',
    size: [1,2,3,4,5,6,7,8,9],
    tags: ['Product', 'Shoe', 'Adidas', 'Price', 'Quality'],
    rating: 3.5,
  ),
  Product(
    title: "Hand Bag",
    price: "USD. 400.00",
    images: [
      'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
      'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43bf85.png',
      'https://img.favpng.com/23/4/0/tote-bag-red-leather-handbag-png-favpng-ki0rQC3dTsbB0fdQT3WvmvxrU.jpg',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage: 'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
    size: [1,2,3,4,5,6,7,8,9],
    tags: ['Product', 'Bag', 'HandBag', 'Price', 'Quality'],
    rating: 3.5,
  ),
  Product(
    title: "Adidas Superstar",
    price: "USD. 59.00",
    images: [
      'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png',
      'https://www.jing.fm/clipimg/full/35-352776_adidas-shoes-clipart-picsart-png-shoes-png-for.png',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage:'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png',
    size: [1,2,3,4,5,6,7,8,9],
    tags: ['Product', 'Shoe', 'Adidas', 'Price', 'Quality'],
    rating: 3.5,
  ),
  Product(
    title: "Hand Bag",
    price: "USD. 400.00",
    images: [
      'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
      'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43bf85.png',
      'https://img.favpng.com/23/4/0/tote-bag-red-leather-handbag-png-favpng-ki0rQC3dTsbB0fdQT3WvmvxrU.jpg',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage: 'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
    size: [1,2,3,4,5,6,7,8,9],
    tags: ['Product', 'Bag', 'HandBag', 'Price', 'Quality'],
    rating: 3.5,
  ),
  Product(
    title: "Adidas Superstar",
    price: "USD. 59.00",
    images: [
      'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png',
      'https://www.jing.fm/clipimg/full/35-352776_adidas-shoes-clipart-picsart-png-shoes-png-for.png',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage: 'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png',
    size: [1,2,3,4,5,6,7,8,9],
    tags: ['Product', 'Shoe', 'Adidas', 'Price', 'Quality'],
    rating: 3.5,
  ),
  Product(
    title: "Hand Bag",
    price: "USD. 400.00",
    images: [
      'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
      'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43bf85.png',
      'https://img.favpng.com/23/4/0/tote-bag-red-leather-handbag-png-favpng-ki0rQC3dTsbB0fdQT3WvmvxrU.jpg',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage: 'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
    size: [1,2,3,4,5,6,7,8,9],
    tags: ['Product', 'Bag', 'HandBag', 'Price', 'Quality'],
    rating: 3.5,
  ),
  Product(
    title: "Adidas Superstar",
    price: "USD. 59.00",
    images: [
      'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png',
      'https://www.jing.fm/clipimg/full/35-352776_adidas-shoes-clipart-picsart-png-shoes-png-for.png',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage: 'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png',
    size: [1,2,3,4,5,6,7,8,9],
    tags: ['Product', 'Shoe', 'Adidas', 'Price', 'Quality'],
    rating: 3.5,
  ),
  Product(
    title: "Hand Bag",
    price: "USD. 400.00",
    images: [
      'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
      'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43bf85.png',
      'https://img.favpng.com/23/4/0/tote-bag-red-leather-handbag-png-favpng-ki0rQC3dTsbB0fdQT3WvmvxrU.jpg',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage: 'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
    size: [1,2,3,4,5,6,7,8,9],
    tags: ['Product', 'Bag', 'HandBag', 'Price', 'Quality'],
    rating: 3.5,
  ),
  Product(
    title: "Adidas Superstar",
    price: "USD. 59.00",
    images: [
      'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png',
      'https://www.jing.fm/clipimg/full/35-352776_adidas-shoes-clipart-picsart-png-shoes-png-for.png',
    ],
    colors: [Colors.black, Colors.red, Colors.yellow],
    mainImage: 'https://www.jing.fm/clipimg/full/35-352776_adidas-shoes-clipart-picsart-png-shoes-png-for.png',
    size: [1,2,3,4,5,6,7,8,9],
    tags: ['Product', 'Shoe', 'Adidas', 'Price', 'Quality'],
    rating: 3.5,
  ),
];
List<Product> bag = [
  Product(
      title: "Hand Bag",
      price: "USD. 400.00",
      images: [
        'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
        'https://www.stickpng.com/assets/images/580b57fbd9996e24bc43bf85.png',
        'https://img.favpng.com/23/4/0/tote-bag-red-leather-handbag-png-favpng-ki0rQC3dTsbB0fdQT3WvmvxrU.jpg',
      ],
      colors: [Colors.black, Colors.red, Colors.yellow],
      mainImage: 'http://www.pngall.com/wp-content/uploads/4/Leather-Bag-PNG.png',
      size: [1,2,3,4,5,6,7,8,9],
      tags: ['Product', 'Bag', 'HandBag', 'Price', 'Quality']
  ),
  Product(
      title: "Adidas Superstar",
      price: "USD. 400.00",
      images: [
        'https://www.transparentpng.com/thumb/adidas-shoes/a4xO3G-adidas-shoes-adidas-shoe-kids-superstar-daddy-grade.png',
        'https://img.favpng.com/23/4/0/tote-bag-red-leather-handbag-png-favpng-ki0rQC3dTsbB0fdQT3WvmvxrU.jpg',
      ],
      colors: [Colors.black, Colors.red, Colors.yellow],
      mainImage: 'https://www.jing.fm/clipimg/full/35-352776_adidas-shoes-clipart-picsart-png-shoes-png-for.png',
      size: [1,2,3,4,5,6,7,8,9],
      tags: ['Product', 'Shoe', 'Adidas', 'Price']
  ),
];