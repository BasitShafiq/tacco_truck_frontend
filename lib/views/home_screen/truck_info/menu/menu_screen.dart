import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taco/consts/consts.dart';
import 'package:taco/views/cart/cart_screen.dart';
import 'package:taco/views/home_screen/truck_info/truck_screen.dart';
import 'package:taco/widgets_common/our_button.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          25.heightBox,
          GestureDetector(
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 270,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/food1.PNG",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                          .box
                          .roundedFull
                          .shadow
                          .padding(EdgeInsets.symmetric(vertical: 15))
                          .clip(Clip.antiAlias)
                          .makeCentered(),
                      10.heightBox,
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            "Tasty Tacos"
                                .text
                                .size(15)
                                .color(Color.fromARGB(255, 87, 87, 87))
                                .semiBold
                                .make(),
                            10.heightBox,
                            "Hot & Spicy"
                                .text
                                .size(10)
                                .color(Color.fromARGB(255, 133, 131, 131))
                                .semiBold
                                .make(),
                            10.heightBox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                10.heightBox,
                                "\$".text.size(14).color(redColor).bold.make(),
                                5.widthBox,
                                "7.99"
                                    .numCurrency
                                    .text
                                    .size(14)
                                    .color(darkFontGrey)
                                    .bold
                                    .make(),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                              color: whiteColor,
                              size: 30,
                            ).box.color(redColor).roundedSM.make()),
                      )
                    ],
                  )
                      .box
                      .white
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .rounded
                      .shadowLg
                      // .padding(const EdgeInsets.all(8))
                      .make()
                      .onTap(() {
                    Get.to(() => const CartScreen());
                  });
                }),
          ),
          20.heightBox,
          ourButton(
              title: "Order Now",
              textColor: whiteColor,
              color: redColor,
              onPress: () {
                Get.to(() => const CartScreen());
              }),
          20.heightBox,
        ],
      ),
    );
  }
}
