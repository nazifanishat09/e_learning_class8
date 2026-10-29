import 'package:class_8/src/pages/page.dart';
import 'package:class_8/src/pages/widgets/customText.dart';
import 'package:flutter/material.dart';

class Searchber extends StatefulWidget {
  const Searchber({super.key});

  @override
  State<Searchber> createState() => _SearchberState();
}

class _SearchberState extends State<Searchber> {
  List category = [
    'Elactrinics',
    'Fashion',
    'Beauty & personal care',
    'Home and kitchen',
    'Grocery',
  ];

  int select = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextSelectionTheme(
        data: TextSelectionThemeData(
          selectionColor: mainC,
          cursorColor: mainC,
          selectionHandleColor: mainC,
        ),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hint: CustomTextWidgets(
              title: " Search for product..",
              fC: Colors.grey,
              fS: 18,
            ),
            prefixIcon: Icon(Icons.search, size: 25, color: Colors.grey),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,

                    builder: (context) => Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border(
                          top: BorderSide(color: mainC, width: 5),
                          right: BorderSide(color: mainC, width: 5),
                          left: BorderSide(color: mainC, width: 5),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidgets(
                              title: "Filter",
                              fS: 20,
                              fW: FontWeight.w600,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomTextWidgets(
                                  title: 'Category',
                                  fS: 18,
                                  fW: FontWeight.w600,
                                ),
                                CustomTextWidgets(
                                  title: 'See all',
                                  fS: 15,
                                  fW: FontWeight.w600,
                                  fC: Colors.grey,
                                ),
                              ],
                            ),

                            Wrap(
                              alignment: WrapAlignment.start,
                              spacing: 8,
                              runSpacing: 8,
                              children: List.generate(category.length, (v) {
                                final bool isSelected = select == v;
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      select = v;
                                    });
                                  },
                                  child: IntrinsicWidth(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7,
                                        vertical: 4,
                                      ),

                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: isSelected
                                              ? Colors.black
                                              : mainC,
                                        ),
                                        color: isSelected
                                            ? Colors.white
                                            : mainC,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CustomTextWidgets(
                                          title: '${category[v]}',
                                          fS: 19,
                                          fC: isSelected
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
              },

              child: Icon(Icons.tune, color: Colors.grey),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
