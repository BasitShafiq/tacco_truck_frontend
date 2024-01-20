import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taco/consts/consts.dart';
import 'package:taco/views/checkout/checkout_scree.dart';
import 'package:taco/widgets_common/custom_text_field.dart';
import 'package:taco/widgets_common/our_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<String> items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              // const Align(
              //   alignment: Alignment.topLeft,
              //   child: Icon(
              //     Icons.arrow_back_ios,
              //     color: redColor,
              //   ),
              // ),
              Center(
                child: Column(
                  children: [
                    "Cart"
                        .text
                        .size(17)
                        .color(Color.fromARGB(255, 87, 87, 87))
                        .bold
                        .make(),
                    5.heightBox,
                    "The Taco of Zorro"
                        .text
                        .size(14)
                        .color(Color.fromARGB(255, 87, 87, 87))
                        .semiBold
                        .make(),
                    5.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: redColor,
                        ),
                        "Green St, 4th Aveneu, East London"
                            .text
                            .size(10)
                            .color(Color.fromARGB(255, 161, 161, 161))
                            .semiBold
                            .make(),
                      ],
                    ),
                    5.heightBox,
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Dismissible(
                        key: Key(items[index]),
                        direction: DismissDirection.endToStart,
                        background: Container(
                          color: Colors.green,
                          padding: EdgeInsets.only(right: 16),
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.check, color: redColor),
                        ),
                        secondaryBackground: Container(
                          color: Color.fromARGB(255, 247, 204, 202),
                          padding: EdgeInsets.only(left: 16),
                          alignment: Alignment.centerLeft,
                          child: const Icon(
                            Icons.delete_outlined,
                            color: redColor,
                          ),
                        ),
                        confirmDismiss: (direction) async {
                          if (direction == DismissDirection.endToStart) {
                            // Show your custom delete confirmation dialog here
                            return await showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Delete Confirmation'),
                                  content: const Text(
                                      'Are you sure you want to delete this item?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(false),
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(color: redColor),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(true),
                                      child: const Text(
                                        'Delete',
                                        style: TextStyle(
                                            color: redColor, fontFamily: bold),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                          return true;
                        },
                        onDismissed: (direction) {
                          items.removeAt(index);
                        },
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                (context.screenHeight * 0.02).heightBox,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "assets/images/tacos.PNG",
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.fill,
                                    )
                                        .box
                                        .roundedFull
                                        .clip(Clip.antiAlias)
                                        .make(),
                                    10.widthBox,
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            "Chicken Burger"
                                                .text
                                                .size(15)
                                                .color(darkFontGrey)
                                                .bold
                                                .make(),
                                            50.widthBox,
                                            "\$11.5"
                                                .text
                                                .size(15)
                                                .color(redColor)
                                                .bold
                                                .make(),
                                          ],
                                        ),
                                        5.heightBox,
                                        "Hot & Spicy"
                                            .text
                                            .size(10)
                                            .color(Color.fromARGB(
                                                255, 117, 117, 117))
                                            .semiBold
                                            .make(),
                                        5.heightBox,
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            "\$4.99"
                                                .text
                                                .size(10)
                                                .color(Color.fromARGB(
                                                    255, 53, 52, 52))
                                                .bold
                                                .make(),
                                            40.widthBox,
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.remove,
                                                        color: whiteColor,
                                                        size: 30,
                                                      )
                                                          .box
                                                          .color(redColor)
                                                          .roundedFull
                                                          .make()),
                                                  "03"
                                                      .text
                                                      .bold
                                                      .size(14)
                                                      .make(),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.add,
                                                        color: whiteColor,
                                                        size: 30,
                                                      )
                                                          .box
                                                          .color(redColor)
                                                          .roundedFull
                                                          .make()),
                                                ]),
                                            10.heightBox,
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                20.heightBox,
                              ],
                            )
                                .box
                                .white
                                .margin(const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10))
                                .rounded
                                .shadow
                                .padding(const EdgeInsets.all(10))
                                .make()
                                .onTap(() {}),
                          ],
                        )),
                  ],
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ourButton(
                // .height(
                //   MediaQuery.of(context).size.height * 0.8,
                // )
                title: "Proceed to Checkout",
                color: redColor,
                textColor: whiteColor,
                onPress: () {
                  Get.to(() => const CheckoutScreen());
                }),
          )
              .box
              .padding(EdgeInsets.symmetric(vertical: 30, horizontal: 15))
              .make(),
          // Expanded(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     //crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       // Row(
          //       //   children: [
          //       //     5.widthBox,
          //       //     Column(
          //       //       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       //       crossAxisAlignment: CrossAxisAlignment.start,
          //       //       children: [
          //       //         // customTextField(
          //       //         //     title: "Location",
          //       //         //     obsecureText: false,
          //       //         //     controller: controller.locationController,
          //       //         //     icon: Icon(Icons.search)),
          //       //         10.heightBox,
          //       //         Row(
          //       //           children: [
          //       //             Icon(Icons.location_on),
          //       //             "Los Angeles, Dailas Texas, USA"
          //       //                 .text
          //       //                 .size(10)
          //       //                 .color(Color.fromARGB(255, 87, 87, 87))
          //       //                 .make(),
          //       //           ],
          //       //         ),
          //       //         Row(
          //       //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       //           //crossAxisAlignment: CrossAxisAlignment.start,
          //       //           children: [
          //       //             Row(
          //       //               children: [
          //       //                 "Subtotal"
          //       //                     .text
          //       //                     .size(14)
          //       //                     .color(Color.fromARGB(255, 172, 170, 170))
          //       //                     .semiBold
          //       //                     .make(),
          //       //                 10.widthBox,
          //       //               ],
          //       //             ),
          //       //             "\$35.4"
          //       //                 .text
          //       //                 .size(14)
          //       //                 .color(Color.fromARGB(255, 172, 170, 170))
          //       //                 .semiBold
          //       //                 .make(),
          //       //           ],
          //       //         ),
          //       //         10.heightBox,
          //       //         Row(
          //       //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       //           children: [
          //       //             Row(
          //       //               children: [
          //       //                 "Delivery Fee"
          //       //                     .text
          //       //                     .size(14)
          //       //                     .color(Color.fromARGB(255, 172, 170, 170))
          //       //                     .semiBold
          //       //                     .make(),
          //       //                 10.widthBox,
          //       //               ],
          //       //             ),
          //       //             "\$5.99"
          //       //                 .text
          //       //                 .size(14)
          //       //                 .color(Color.fromARGB(255, 172, 170, 170))
          //       //                 .semiBold
          //       //                 .make(),
          //       //           ],
          //       //         ),
          //       //         10.heightBox,
          //       //         Row(
          //       //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       //           children: [
          //       //             Row(
          //       //               children: [
          //       //                 "GST"
          //       //                     .text
          //       //                     .size(14)
          //       //                     .color(Color.fromARGB(255, 172, 170, 170))
          //       //                     .semiBold
          //       //                     .make(),
          //       //               ],
          //       //             ),
          //       //             "\$10.4"
          //       //                 .text
          //       //                 .size(14)
          //       //                 .color(Color.fromARGB(255, 172, 170, 170))
          //       //                 .semiBold
          //       //                 .make(),
          //       //           ],
          //       //         ),
          //       //       ],
          //       //     ),
          //       //   ],
          //       // ),
          //       // Align(
          //       //   alignment: Alignment.bottomCenter,
          //       //   child: ourButton(
          //       //       title: "Proceed to Checkout",
          //       //       color: redColor,
          //       //       textColor: whiteColor,
          //       //       onPress: () {
          //       //         // Get.to(() => HomeScreen());
          //       //       }),
          //       // )
          //     ],
          //   )
          //       .box
          //       .padding(EdgeInsets.symmetric(vertical: 30, horizontal: 15))
          //       .height(
          //         MediaQuery.of(context).size.height * 0.8,
          //       )
          //       .make(),
          // ),
        ],
      ),
    );
  }
}
