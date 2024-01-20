import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:taco/consts/consts.dart';

import '../truck_screen.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.heightBox,
          "Description"
              .text
              .size(15)
              .color(Color.fromARGB(255, 87, 87, 87))
              .bold
              .make(),
          5.heightBox,
          "Many languages do not use Multilingual writers often find  of the most difficult concepts to learn. Although there are some rules about article usage to help, there are also quite a few exceptions. Therefore, learning to use articles accurately takes a long time. To master article usage."
              .text
              .align(TextAlign.justify)
              .size(11)
              .color(Colors.grey)
              .semiBold
              .make(),
          20.heightBox,
          "Photos"
              .text
              .size(15)
              .color(Color.fromARGB(255, 87, 87, 87))
              .bold
              .make(),
          15.heightBox,
          GestureDetector(
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 6,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 8,
                    // mainAxisExtent: 200,
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/tacos.PNG",
                        width: context.screenWidth,
                        height: 100,
                        fit: BoxFit.fill,
                      ).box.rounded.shadow.clip(Clip.antiAlias).make(),
                    ],
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              "User's Feedback"
                  .text
                  .size(15)
                  .color(Color.fromARGB(255, 87, 87, 87))
                  .bold
                  .make(),
              "See All".text.size(13).color(redColor).bold.make(),
            ],
          ),
          20.heightBox,
          VxSwiper.builder(
              height: 150,
              aspectRatio: 16 / 9,
              reverse: true,
              autoPlay: true,
              enlargeCenterPage: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    "Tasty Food. Really loved it. Ambience is also very unique. there are various other navigation patterns and widgets you can us"
                        .text
                        .align(TextAlign.justify)
                        .size(11)
                        .color(darkFontGrey)
                        .semiBold
                        .make(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star,
                          color: redColor,
                        ),
                        "4.5".text.size(11).color(redColor).semiBold.make(),
                        // "1000+ rating"
                        //     .text
                        //     .color(const Color.fromARGB(
                        //         255, 223, 221, 221))
                        //     .size(4)
                        //     .make()
                      ],
                    ),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .margin(EdgeInsets.symmetric(vertical: 4, horizontal: 10))
                    //.margin(const EdgeInsets.symmetric(horizontal: 10))
                    .padding(EdgeInsets.all(10))
                    .shadowMd
                    //.clip(Clip.antiAlias)
                    .make();
              }),
        ],
      ),
    );
  }
}
