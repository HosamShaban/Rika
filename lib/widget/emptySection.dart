import 'package:flutter/material.dart';


class EmptySection extends StatefulWidget {
  final String emptyImg, emptyMsg;
  const EmptySection({
    Key? key,
    required this.emptyImg,
    required  this.emptyMsg,
  }) : super(key: key);

  @override
  State<EmptySection> createState() => _EmptySectionState();
}

class _EmptySectionState extends State<EmptySection> with TickerProviderStateMixin{
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
      double circleSize =120;
    double iconSize = 108;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Stack(
            children: [
              Center(
                child: ScaleTransition(
                  scale: scaleAnimation,
                  child: Container(
                    height: circleSize,
                    width: circleSize,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              SizeTransition(
                sizeFactor: checkAnimation,
                axis: Axis.horizontal,
                axisAlignment: -1,
                child: Center(
                  child: Icon(Icons.check, color: Colors.white, size: iconSize),
                ),
              ),
            ],
          ),
          const SizedBox(height: 1),

          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              widget.emptyMsg,
              style:  const TextStyle(
                fontSize: 20.0,
                color: Color(0xFF303030),
              ),
            ),
          ),
        ],
      ),
    );
  }
}