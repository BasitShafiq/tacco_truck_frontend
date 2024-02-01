import 'package:flutter/material.dart';
import 'package:taco/consts/colors.dart';
import 'package:taco/consts/consts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: redColor,
                  ),
                ),
                Center(
                  child: "Profile"
                      .text
                      .size(17)
                      .color(Color.fromARGB(255, 87, 87, 87))
                      .bold
                      .make(),
                ),
              ],
            ),
            (context.screenHeight * 0.02).heightBox,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  width: 120,
                  fit: BoxFit.fill,
                ).box.roundedFull.clip(Clip.antiAlias).make(),
                "Alexander"
                    .text
                    .size(17)
                    .color(Color.fromARGB(255, 87, 87, 87))
                    .bold
                    .make(),
              ],
            ),
            //heightBox,
            // (context.screenHeight * 0.01).heightBox,

            (context.screenHeight * 0.05).heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                "My Reviews"
                    .text
                    .size(15)
                    .color(Color.fromARGB(255, 87, 87, 87))
                    .bold
                    .make(),
                "See All".text.size(13).color(redColor).bold.make(),
              ],
            ),
            10.heightBox,
            VxSwiper.builder(
                height: 150,
                aspectRatio: 16 / 9,
                reverse: true,
                autoPlay: true,
                enlargeCenterPage: true,
                itemCount: 6,
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
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                "Favorite Truck"
                    .text
                    .size(15)
                    .color(Color.fromARGB(255, 87, 87, 87))
                    .bold
                    .make(),
                "See All".text.size(13).color(redColor).bold.make(),
              ],
            ),
            GestureDetector(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 250,
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/home3.PNG",
                          width: context.screenWidth,
                          height: 150,
                          fit: BoxFit.fill,
                        ).box.rounded.shadow.clip(Clip.antiAlias).make(),
                        10.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "Tasty Tacos"
                                .text
                                .size(15)
                                .color(Color.fromARGB(255, 87, 87, 87))
                                .semiBold
                                .make(),
                            "(4.5)".text.color(redColor).bold.size(14).make()
                          ],
                        ),
                        5.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "Mexican"
                                .text
                                .size(11)
                                .color(Colors.grey)
                                .semiBold
                                .make(),
                            10.widthBox,
                            "(Starting in 10 min)"
                                .text
                                .size(10)
                                .color(Color.fromARGB(255, 87, 87, 87))
                                .semiBold
                                .make(),
                            "2.5 km away"
                                .text
                                .size(11)
                                .color(Colors.grey)
                                .semiBold
                                .make(),
                          ],
                        )
                      ],
                    )
                        .box
                        .white
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .roundedSM
                        .shadowSm
                        .padding(const EdgeInsets.all(8))
                        .make()
                        .onTap(() {
                      //Get.to(() => const TruckScreen());
                    });
                  }),
            ),
            30.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                "Upcoming Rewards"
                    .text
                    .size(15)
                    .color(Color.fromARGB(255, 87, 87, 87))
                    .bold
                    .make(),
                "See All".text.size(13).color(redColor).bold.make(),
              ],
            ),
            15.heightBox,
            Image.asset(
              "assets/images/discount.PNG",
              width: context.screenWidth,
              height: 150,
              fit: BoxFit.fill,
            ).box.rounded.shadowSm.clip(Clip.antiAlias).make(),
          ],
        )
            .box
            //.margin(EdgeInsets.all(5))
            .padding(EdgeInsets.all(15))
            .make(),
      ),
    );
  }
}
