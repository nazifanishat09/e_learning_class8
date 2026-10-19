import 'package:carousel_slider/carousel_slider.dart';
import 'package:class_8/src/pages/widgets/customText.dart';
import 'package:class_8/src/pages/widgets/searchbar.dart';
import 'package:class_8/src/pages/widgets/slider.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Category page - class 8")),
      body: Padding(
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
                        Icon(Icons.location_on, color: Colors.orange),
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
                                color: Colors.orange,
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
          ],
        ),
      ),
    );
  }
}

