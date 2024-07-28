import 'package:flutter/material.dart';
import 'package:flutter_quiz_project/data/categories_data.dart';
import 'package:flutter_quiz_project/screens/second_categories_screen.dart';
import 'package:flutter_quiz_project/widget/home_bottom_bar.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveCategoriesScreen extends StatefulWidget {
  const HiveCategoriesScreen({super.key});

  @override
  State<HiveCategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<HiveCategoriesScreen> {

late Box myBox;

  @override
  void initState() {
    super.initState();
    myBox = Hive.box("dataBox");
      myBox.put('title1',"shoese");
      myBox.put('title2',"Bags");
      myBox.put('title3',"Electronics");
    myBox.put('products1',"230 Product");
    myBox.put('products2',"160 Product");
    myBox.put('products3',"130 Product");
    print(myBox.values);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hive Data",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            )),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 19)),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Category[2]["Icon"],
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(myBox.getAt(7),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22)),
                                    ],
                                  ),
                                  Text(
                                    myBox.getAt(3),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ],
                              ),
                            ))),
                            Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 19)),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Category[3]["Icon"],
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(myBox.getAt(6),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22)),
                                    ],
                                  ),
                                  Text(
                                    myBox.getAt(2),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ],
                              ),
                            ))),
                            Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 19)),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Category[4]["Icon"],
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(myBox.getAt(5),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22)),
                                    ],
                                  ),
                                  Text(
                                    myBox.getAt(1),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ],
                              ),
                            ))),
                ],
              ),
            ),
            HomeBottomBar()
          ],
        ),
      ),
    );
  }
}
