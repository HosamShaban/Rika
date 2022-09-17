import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/config/text_style.dart';

class DarkTab extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final Widget? widget;
  final VoidCallback? ontap;
  const DarkTab({Key? key, this.title, this.subTitle, this.widget, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap!;
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 72,
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: SvgPicture.asset(
                    DefaultImages.dark,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title!,
                      style: pSemiBold18.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                widget!
              ],
            ),
          ),

        ],
      ),
    );
  }
}
