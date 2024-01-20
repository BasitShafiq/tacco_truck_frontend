import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taco/consts/consts.dart';
import 'package:taco/widgets_common/checkout_button.dart';
import 'package:taco/widgets_common/our_button.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    //MediaQuery.of(context).size.height * 0.5;
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
                  child: "Checkout"
                      .text
                      .size(17)
                      .color(Color.fromARGB(255, 87, 87, 87))
                      .bold
                      .make(),
                ),
              ],
            ),
            25.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: checkoutButton(
                      title: "Delivery",
                      textColor: whiteColor,
                      color: redColor,
                      onPress: () {}),
                ),
                Expanded(
                  child: checkoutButton(
                      title: "Pickup",
                      textColor: redColor,
                      color: whiteColor,
                      onPress: () {}),
                ),
              ],
            ),
            GestureDetector(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 1,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 8,
                      mainAxisExtent: 300,
                      crossAxisCount: 1),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.heightBox,
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                            ),
                            5.widthBox,
                            "Truck Address"
                                .text
                                .size(15)
                                .color(Color.fromARGB(255, 87, 87, 87))
                                .semiBold
                                .make(),
                          ],
                        ),
                        20.heightBox,
                        Image.asset(
                          "assets/images/maps.PNG",
                          width: context.screenWidth,
                          height: 150,
                          fit: BoxFit.fill,
                        ).box.rounded.clip(Clip.antiAlias).make(),
                        15.heightBox,
                        "Address".text.size(15).color(redColor).bold.make(),
                        10.heightBox,
                        "House No 65, James d1, 4th Avenue, Texas"
                            .text
                            .size(10)
                            .color(Color.fromARGB(255, 87, 87, 87))
                            .semiBold
                            .make(),
                      ],
                    )
                        .box
                        .white
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .rounded
                        .shadowSm
                        .padding(const EdgeInsets.all(10))
                        .make()
                        .onTap(() {
                      // Get.to(() => const LocationPopup());

                      // showModalBottomSheet(
                      //   context: context,
                      //   builder: (BuildContext context) {
                      //     return LocationPopup();
                      //   },
                      // );
                    });
                  }),
            ),
            20.heightBox,
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.card_membership,
                        ),
                        10.widthBox,
                        "Payment Method"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 87, 87, 87))
                            .semiBold
                            .make(),
                      ],
                    ),
                    const Icon(
                      Icons.edit_outlined,
                      color: redColor,
                    ),
                  ],
                ),
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.card_membership,
                        ),
                        10.widthBox,
                        "Online Payment"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 87, 87, 87))
                            .semiBold
                            .make(),
                      ],
                    ),
                  ],
                ),
              ],
            )
                .box
                .white
                .margin(const EdgeInsets.symmetric(horizontal: 4))
                .rounded
                .shadowSm
                .padding(const EdgeInsets.all(15))
                .make(),
            20.heightBox,
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.document_scanner_outlined,
                        ),
                        10.widthBox,
                        "Order Summary"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 87, 87, 87))
                            .semiBold
                            .make(),
                      ],
                    ),
                    const Icon(
                      Icons.edit_outlined,
                      color: redColor,
                    ),
                  ],
                ),
                15.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        "3x"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 172, 170, 170))
                            .semiBold
                            .make(),
                        10.widthBox,
                        "Tacos Cheese"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 172, 170, 170))
                            .semiBold
                            .make(),
                      ],
                    ),
                    "\$11.4"
                        .text
                        .size(14)
                        .color(Color.fromARGB(255, 172, 170, 170))
                        .semiBold
                        .make(),
                  ],
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        "2x"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 172, 170, 170))
                            .semiBold
                            .make(),
                        10.widthBox,
                        "Cheese Burger"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 172, 170, 170))
                            .semiBold
                            .make(),
                      ],
                    ),
                    "\$15.4"
                        .text
                        .size(14)
                        .color(Color.fromARGB(255, 172, 170, 170))
                        .semiBold
                        .make(),
                  ],
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        "10x"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 172, 170, 170))
                            .semiBold
                            .make(),
                        10.widthBox,
                        "Larger French Fries"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 172, 170, 170))
                            .semiBold
                            .make(),
                      ],
                    ),
                    "\$9.99"
                        .text
                        .size(14)
                        .color(Color.fromARGB(255, 172, 170, 170))
                        .semiBold
                        .make(),
                  ],
                ),
                10.heightBox,
                Divider(
                  thickness: 2,
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        "Subtotal"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 172, 170, 170))
                            .semiBold
                            .make(),
                        10.widthBox,
                      ],
                    ),
                    "\$35.4"
                        .text
                        .size(14)
                        .color(Color.fromARGB(255, 172, 170, 170))
                        .semiBold
                        .make(),
                  ],
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        "Delivery Fee"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 172, 170, 170))
                            .semiBold
                            .make(),
                        10.widthBox,
                      ],
                    ),
                    "\$5.99"
                        .text
                        .size(14)
                        .color(Color.fromARGB(255, 172, 170, 170))
                        .semiBold
                        .make(),
                  ],
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        "GST"
                            .text
                            .size(14)
                            .color(Color.fromARGB(255, 172, 170, 170))
                            .semiBold
                            .make(),
                      ],
                    ),
                    "\$10.4"
                        .text
                        .size(14)
                        .color(Color.fromARGB(255, 172, 170, 170))
                        .semiBold
                        .make(),
                  ],
                ),
              ],
            )
                .box
                .white
                .margin(const EdgeInsets.symmetric(horizontal: 4))
                .rounded
                .shadowSm
                .padding(const EdgeInsets.all(15))
                .make(),
            15.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Grand Total"
                    .text
                    .size(14)
                    .color(Color.fromARGB(255, 70, 69, 69))
                    .semiBold
                    .make(),
                "\$55.5".text.size(18).color(redColor).bold.make(),
              ],
            ).box.padding(const EdgeInsets.all(15)).make(),
            10.heightBox,
            //Button
            ourButton(
                title: "Proceed to Checkout",
                textColor: whiteColor,
                color: redColor,
                onPress: () {}),
            50.heightBox,
            //Button
            // ourButton(
            //     title: "Admin Panel",
            //     textColor: whiteColor,
            //     color: redColor,
            //     onPress: () {
            //       //Get.to(()=>)
            //     })
          ],
        ).box.padding(EdgeInsets.all(15)).make(),
      ),
    );
  }
}
