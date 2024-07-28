import 'package:flutter/material.dart';
import 'package:flutter_quiz_project/data/categories_data.dart';
import 'package:flutter_quiz_project/screens/categories_screen.dart';
// import 'package:flutter_quiz_project/data/categories_data.dart';
import 'package:flutter_quiz_project/widget/home_bottom_bar.dart';

class SecondCategoriesScreen extends StatefulWidget {
  const SecondCategoriesScreen({super.key});

  @override
  State<SecondCategoriesScreen> createState() => _SecondCategoriesScreenState();
}

class _SecondCategoriesScreenState extends State<SecondCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                             CategoriesScreen(),
                      ));
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: EdgeInsets.only(top: 5, left: 10),
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search Categories",
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                      prefixIcon: Icon(Icons.search, size: 40),
                    ),
                  ),
                ),
              ),
              Wrap(
                children: [
                  for (int i = 0; i < Category.length; i++)
                    Stack(
                      alignment: AlignmentDirectional.bottomStart,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.22,
                          margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(Category[i]["image"]))),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.1,
                          margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.7),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height * 0.11,
                          margin: EdgeInsets.fromLTRB(5, 0, 5, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                Category[i]["title"],
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w900),
                              ),
                              Text(Category[i]["products"],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        )
                      ],
                    ),
                ],
              ),

              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.06,
              // ),
              HomeBottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
