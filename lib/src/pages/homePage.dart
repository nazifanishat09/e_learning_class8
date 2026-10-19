import 'package:class_8/src/pages/page.dart';
import 'package:class_8/src/pages/widgets/customText.dart';
import 'package:class_8/src/pages/widgets/searchbar.dart';
import 'package:class_8/src/pages/widgets/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List i = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt6t-qnZA_EbR-S_C3aRBrIJrLtGIA3n5ODLSHuaWbrA&s=10",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCn0OUzjJkatbJ3lWHR5TVIVUvTFJorerxMrq4V2mfBg&s=10,",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_8WfGnOXms9n-JhE1atpK_B_mM-O9pgsfhjKotrv5-w&s=10",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGJZiIMkXA0_snkAzDgPpepN2o3500SeTKh4C2PRya_w&s=10",
  ];
  int selected = 0;
  List<Map<String, dynamic>> data = [
    {'svg': 'assets/grape.svg', 'name': 'Grape'},
    {'svg': 'assets/guava.svg', 'name': 'Guava'},
    {'svg': 'assets/apple.svg', 'name': 'Apple'},
    {'svg': 'assets/orange.svg', 'name': 'Orange'},
    {'svg': 'assets/pepe.svg', 'name': 'Pepe'},
    {'svg': 'assets/pomegranate.svg', 'name': 'Pomegranate'},
    {'svg': 'assets/watermelon.svg', 'name': 'Watermelon'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Category page - class 8")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 20,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidgets(
                        title: 'Delivery Address',
                        fS: 18,
                        fW: FontWeight.w600,
                      ),
                      Row(
                        spacing: 5,
                        children: [
                          Icon(Icons.location_on, color: mainC),
                          CustomTextWidgets(
                            title: 'Shymoli,Dhaka',
                            fC: Colors.grey[700],
                            fW: FontWeight.w500,
                          ),

                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey[700],
                            size: 12,
                          ),
                        ],
                      ),
                    ],
                  ),

                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,

                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.search, color: Colors.white, size: 35),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 35,
                            ),
                            Positioned(
                              top: -6,
                              right: -8,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: mainC,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: CustomTextWidgets(
                                    title: "2",
                                    fC: Colors.white,
                                    fS: 15,
                                    fW: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomSlider(i: i),
              Searchber(),
              Row(
                children: [
                  CustomTextWidgets(
                    title: "Categories",
                    fS: 23,
                    fW: FontWeight.w700,
                  ),
                  SizedBox(width: 150),
                  CustomTextWidgets(title: "See All", fC: Colors.grey),
                  SizedBox(width: 7),
                  Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey),
                ],
              ),

              SizedBox(
                height: 110,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  shrinkWrap: true,

                  itemBuilder: (c, i) {
                    final item = data[i];
                    final selectedItem = selected == i;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = i;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(right: 10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 2,
                            color: selectedItem ? Colors.black : mainC,
                          ),
                          color: selectedItem ? mainC : Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              item['svg'],
                              color: Colors.green,
                              height: 50,
                            ),
                            CustomTextWidgets(
                              title: (item['name']),
                              fS: 18,
                              fW: FontWeight.w500,
                              fC: selectedItem ? Colors.white : Colors.black,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
