import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/text_style.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String image;

  const CategoryCard({Key? key, required this.name, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: image,
            height: 160,
            width: Get.width,
            progressIndicatorBuilder: ((context, url, progress) {
              return ColoredBox(
                color: Colors.black12,
                child: Center(child: CircularProgressIndicator(value: progress.progress),),
              );
            }),

            errorWidget: (context, url, error) => const ColoredBox(
              color: Colors.black12,
              child: Icon(Icons.error , size: 50 , color: Colors.red),
            ),
            fit: BoxFit.fill,

          ),

          const SizedBox(height: 5),
          Text(
            name,
            style: pRegular14.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 7),
        ],
      ),
    );
  }
}
