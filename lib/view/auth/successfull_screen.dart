import 'package:flutter/material.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/view/tab_bar.dart';
import 'package:rika/widget/emptySection.dart';
import 'package:rika/widget/subTitle.dart';


class Success extends StatefulWidget {
  Success({Key? key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();

}

class _SuccessState extends State<Success> with TickerProviderStateMixin{
  late AnimationController scaleController = AnimationController(duration: const Duration(milliseconds: 800), vsync: this);
  late Animation<double> scaleAnimation = CurvedAnimation(parent: scaleController, curve: Curves.elasticOut);
  late AnimationController checkController = AnimationController(duration: const Duration(milliseconds: 400), vsync: this);
  late Animation<double> checkAnimation = CurvedAnimation(parent: checkController, curve: Curves.linear);

  @override
  void initState() {
    super.initState();
    scaleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        checkController.forward();
      }
    });
    scaleController.forward();
  }

  @override
  void dispose() {
    scaleController.dispose();
    checkController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const EmptySection(
            emptyImg: DefaultImages.success,
            emptyMsg: 'Successful!',
          ),
          const SubTitle(
            subTitleText:
                'You have successfully registered in \n our app and start working in it.',
          ),
         const SizedBox(height: 150,),
           MaterialButton(
              minWidth: 325,
              height: 50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              color: Colors.black87,
              child: const Text('Start Shopping',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TabScreen(),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
