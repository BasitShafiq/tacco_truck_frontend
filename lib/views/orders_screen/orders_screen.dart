import 'package:flutter/material.dart';
import 'package:taco/consts/consts.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                child: "Order History"
                    .text
                    .size(17)
                    .color(Color.fromARGB(255, 87, 87, 87))
                    .bold
                    .make(),
              ),
            ],
          ),
          GestureDetector(
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 15,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 50,
                    mainAxisExtent: 200,
                    crossAxisCount: 1),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/home2.PNG",
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ).box.rounded.clip(Clip.antiAlias).make(),
                          10.widthBox,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  "Chicken Burger"
                                      .text
                                      .size(15)
                                      .color(darkFontGrey)
                                      .bold
                                      .make(),
                                  50.widthBox,
                                  "\$114"
                                      .text
                                      .size(15)
                                      .color(redColor)
                                      .bold
                                      .make(),
                                ],
                              ),
                              5.heightBox,
                              "02 Oct 12:15"
                                  .text
                                  .size(10)
                                  .color(Color.fromARGB(255, 117, 117, 117))
                                  .semiBold
                                  .make(),
                              5.heightBox,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  "Pizza Hut Truck"
                                      .text
                                      .size(10)
                                      .color(Color.fromARGB(255, 117, 117, 117))
                                      .semiBold
                                      .make(),
                                  40.widthBox,
                                  "* Completed"
                                      .text
                                      .size(10)
                                      .color(Colors.green)
                                      .semiBold
                                      .make(),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      20.heightBox,
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 232, 232),
                            border: Border.all(color: Colors.grey)),
                        width: context.screenWidth,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 40,
                        //color: Color.fromARGB(255, 236, 235, 235),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            "#2xaAvcsg"
                                .text
                                .size(10)
                                .color(Color.fromARGB(255, 160, 158, 158))
                                .semiBold
                                .make(),
                            "Recorder"
                                .text
                                .size(15)
                                .color(redColor)
                                .bold
                                .make(),
                          ],
                        ),
                      ),
                    ],
                  )
                      .box
                      .white
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .rounded
                      .shadow
                      .padding(const EdgeInsets.all(8))
                      .make()
                      .onTap(() {});
                }),
          ),
        ],
      ).box.padding(EdgeInsets.all(15)).make(),
    );
  }
}
