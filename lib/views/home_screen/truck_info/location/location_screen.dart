import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taco/consts/consts.dart';
import 'package:taco/controller/location_controller.dart';
import 'package:taco/views/home_screen/home_screen.dart';
import 'package:taco/widgets_common/custom_text_field.dart';
import 'package:taco/widgets_common/our_button.dart';
import '../truck_screen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          20.heightBox,
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
                          const Icon(Icons.map_sharp),
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
                      .roundedSM
                      .shadowSm
                      .padding(const EdgeInsets.all(8))
                      .make()
                      .onTap(() {
                    // Get.to(() => const LocationPopup());

                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return LocationPopup();
                      },
                    );
                  });
                }),
          ),
        ],
      ),
    );
  }
}

//Location Popup
class LocationPopup extends StatelessWidget {
  var controller = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.arrow_back,
              color: redColor,
            ),
            5.widthBox,
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customTextField(
                      title: "Location",
                      obsecureText: false,
                      controller: controller.locationController,
                      icon: Icon(Icons.search)),
                  10.heightBox,
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      "Los Angeles, Dailas Texas, USA"
                          .text
                          .size(10)
                          .color(Color.fromARGB(255, 87, 87, 87))
                          .make(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: ourButton(
              title: "Done",
              color: redColor,
              textColor: whiteColor,
              onPress: () {
                // Get.to(() => HomeScreen());
              }),
        )
      ],
    )
        .box
        .padding(EdgeInsets.symmetric(vertical: 30, horizontal: 15))
        .height(
          MediaQuery.of(context).size.height * 0.8,
        )
        .make();
  }
}
