import 'package:flutter/material.dart';
import 'package:rika/config/colors.dart';
import 'package:rika/config/default_image.dart';
import 'package:rika/config/text_style.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Notification",
          style: pSemiBold20.copyWith(
              color: Colors.black87
          ),

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
        actions: const [
          Icon(Icons.more_vert_sharp , color: Colors.black87 , size: 30,),
        ],
      ),
      body: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
      Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                index == 0
                                    ? DefaultImages.profile1
                                    : index == 1
                                    ? DefaultImages.profile2
                                    : index == 2
                                    ? DefaultImages.profile4
                                    : index == 3
                                    ? DefaultImages.profile3
                                    : DefaultImages.profile1
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          index == 0
                              ? "Kristine Jones"
                              : index == 1
                              ? "Kay Hicks"
                              : index == 2
                              ? "Cheryl Moretti"
                              : index == 3
                              ?"Rodney Miller"
                              : "Kristine Jones",
                          style: pSemiBold18.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Text(
                      index == 0
                          ? "It is a long established fact \n that a reader will be distracted by the \n readable content of a page."
                      :index == 1
                          ? "There are many variations of \n passages of Lorem Ipsum available."
                          : "If you are going to use a \n passage of Lorem Ipsum, you need to be sure \n there isn't anything embarrassing",
                      style: pRegular14.copyWith(
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      index == 1
                          ? "2 hours ago"
                          : index == 2
                          ? "6 hours ago"
                          : "4 hours ago"                 ,
                      style: pRegular14.copyWith(
                        fontSize: 12,
                        color: ConstColors.text2Color
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                );
              },
            )

          ],
),
      ),
    ],
      ),
    );
  }
}
