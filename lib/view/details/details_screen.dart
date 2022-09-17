import 'package:flutter/material.dart';
import 'package:rika/config/colors.dart';
import 'package:rika/view/cart/cart_view.dart';
import 'package:rika/view/details/components/global.dart';
import 'package:rika/widget/carouselproductslist.dart';
import 'package:rika/widget/sizeselector.dart';

class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            CarouselProductsList(
              productsList: products[id].images,
              type: CarouselTypes.details,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Spacer(),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products[id].tags!.length,
                      itemBuilder: (ctx, i) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Chip(
                            backgroundColor: Colors.black,
                            padding:
                            const EdgeInsets.symmetric(horizontal: 15.0),
                            label: Text(
                              products[id].tags![i],
                              style:
                              Theme.of(context).textTheme.button!.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                 const SizedBox(height: 35),
                  Text(
                    "${products[id].title}",
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  Text("${products[id].price}" , style: const TextStyle(fontSize: 16),),

                  const SizedBox(height: 20,),

                  const Text(
                    "Description:",
                    style: TextStyle(color: Colors.black87  , fontSize: 18 , fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5,),
                  Text("${products[id].description}"  , style: const TextStyle(fontSize: 11 , color: ConstColors.text2Color),),

                  const SizedBox(height: 20,),
                  const Text(
                    "Size:",
                    style: TextStyle(fontSize: 16 , color: Colors.black87),
                    ),
                 const SizedBox(height: 5,),
                  Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    height: 45,
                    child: SizeSelector(id: id),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: 330,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CartView()));
                        },
                              style: ElevatedButton.styleFrom(
                                primary: ConstColors.primaryColor,
                                   shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                      ),
                              ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text('Add to Cart'),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.shopping_cart_outlined,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Text('Total Price: \$150' , textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
