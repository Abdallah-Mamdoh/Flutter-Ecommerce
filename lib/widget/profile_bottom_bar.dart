import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileBottomBar extends StatelessWidget {
  const ProfileBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 3, blurRadius: 5)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, size: 35),
                Icon(Icons.shopping_cart_sharp, size: 35),
                Icon(Icons.notifications, size: 35),
                Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 209, 204, 204),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    width: 120,
                    child: Row(
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Icon(
                              Icons.person,
                              size: 30,
                              color: Colors.white,
                            )),
                        Text(
                          "Profile",
                          style: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
