import 'package:flutter/material.dart';
import 'package:flutter_quiz_project/screens/categories_screen.dart';
import 'package:flutter_quiz_project/screens/signup_screen.dart';
import 'package:flutter_quiz_project/widget/logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding: const EdgeInsets.only(top: 30),
                  child: Image.asset(Logo)),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Welcome!",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    const Text("Please login or signup to continue our app"),
                    const SizedBox(height: 50),
                    TextFormField(
                      decoration: const InputDecoration(
                          label: Text(
                            "Email",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          floatingLabelStyle: TextStyle(
                            color: Color.fromARGB(239, 15, 15, 238),
                          )),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            label: Text(
                              "Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            floatingLabelStyle: TextStyle(
                                color: Color.fromARGB(239, 15, 15, 238)),
                            )),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width*0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("don't have an account?",style: TextStyle(fontSize: 16),),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const SignupScreen(),
                                  ));
                            },
                            child: Text("Signup",style: TextStyle(fontSize: 18,color: Colors.blue,decoration: TextDecoration.underline)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                     CategoriesScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15)),
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width * 0.4,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "or",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width * 0.4,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 19, 94, 156),
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Continue with Facebook",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.account_circle,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "Continue with Google",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.apple,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Continue with Apple",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          )),
                    )
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
