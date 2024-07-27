import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quiz_project/screens/categories_screen.dart';
import 'package:flutter_quiz_project/screens/second_categories_screen.dart';

class SuccessfullScreen extends StatelessWidget {
  const SuccessfullScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.check_circle_outline,
                      color: Colors.green, size: 100),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Successful!",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(
                          "You have successfully registered in our app, you can start your shopping now",
                          style: TextStyle(fontSize: 14),
                          textAlign: TextAlign.center)),
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const CategoriesScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 15)),
                  child: Text(
                    "Start Shopping",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
