import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:taco/consts/consts.dart';
import 'Info/truck_info.dart';
import 'location/location_screen.dart';
import 'menu/menu_screen.dart';
import 'popular/popular_screen.dart';

class TruckScreen extends StatefulWidget {
  const TruckScreen({super.key});
  @override
  _TruckScreenState createState() => _TruckScreenState();
}

class _TruckScreenState extends State<TruckScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 220.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    //Image
                    Image.asset(
                      "assets/images/home1.PNG",
                      fit: BoxFit.fill,
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                    )
                        .box
                        .rounded
                        .shadow
                        .padding(EdgeInsets.all(8))
                        .clip(Clip.antiAlias)
                        .make(),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 1,
                          sigmaY: 1,
                        ),
                        child: Container(
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Transform.scale(
                                scale: 0.8,
                                child: IconButton.filled(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: redColor,
                                    )).box.white.roundedFull.make()),
                            Transform.scale(
                              scale: 0.8,
                              child: IconButton.filled(
                                  color: whiteColor,
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.share_outlined,
                                    color: darkFontGrey,
                                  )).box.white.roundedFull.make(),
                            ),
                            Transform.scale(
                              scale: 0.8,
                              child: IconButton.filled(
                                  color: whiteColor,
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more_vert_outlined,
                                    color: darkFontGrey,
                                  )).box.white.roundedFull.make(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "Tasty Tacos on Wheels"
                                .text
                                .size(14)
                                .color(Color.fromARGB(255, 250, 248, 248))
                                .semiBold
                                .make(),
                            Row(
                              children: [
                                "Mexican".text.size(12).white.semiBold.make(),
                                10.widthBox,
                                "(Starting in 10 min)"
                                    .text
                                    .size(10)
                                    .white
                                    .make(),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: redColor,
                                ),
                                "4.5"
                                    .text
                                    .size(11)
                                    .color(redColor)
                                    .semiBold
                                    .make(),
                                // "1000+ rating"
                                //     .text
                                //     .color(const Color.fromARGB(
                                //         255, 223, 221, 221))
                                //     .size(4)
                                //     .make()
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                "2.5 km away"
                                    .text
                                    .size(11)
                                    .color(const Color.fromARGB(
                                        255, 248, 246, 246))
                                    .semiBold
                                    .make(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ];
        },
        body: Column(children: [
          5.heightBox,
          TabBar(
            unselectedLabelColor: darkFontGrey,
            labelColor: redColor,
            indicatorColor: redColor,
            indicatorWeight: 3,
            isScrollable: true,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 25),
            padding:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.3),
            controller: _tabController,
            tabs: [
              Tab(text: 'Info'),
              Tab(text: 'Menu'),
              Tab(text: 'Popular'),
              Tab(text: 'Location'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                InfoScreen(),
                MenuScreen(),
                PopularScreen(),
                LocationScreen(),
              ],
            ),
          ),
        ]),
      ),
    )));
  }
}

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 2,
        //     blurRadius: 5,
        //     offset: Offset(0, 2),
        //   ),
        //],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavigationBarItem(
            text: 'Info',
            isSelected: currentIndex == 0,
            onTap: () => onTap(0),
          ),
          NavigationBarItem(
            text: 'Menu',
            isSelected: currentIndex == 1,
            onTap: () => onTap(1),
          ),
          NavigationBarItem(
            text: 'Popular',
            isSelected: currentIndex == 2,
            onTap: () => onTap(2),
          ),
          NavigationBarItem(
            text: 'Location',
            isSelected: currentIndex == 3,
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }
}

class NavigationBarItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const NavigationBarItem({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? redColor : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? whiteColor : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
