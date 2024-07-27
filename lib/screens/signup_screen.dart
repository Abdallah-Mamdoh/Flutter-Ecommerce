import 'package:flutter/material.dart';
import 'package:flutter_quiz_project/screens/successfull_screen.dart';
import 'package:flutter_quiz_project/widget/logo.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _checked = false;
  final _formkey = GlobalKey<FormState>();
  var passwordInput = TextEditingController();
  bool secured = true;
  var eyeIcon = Icons.visibility_off;

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
                  padding: EdgeInsets.only(top: 30),
                  child: Image.asset(Logo)),
            ),
            Form(
              key: _formkey,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign Up",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                      Text("Create a new account"),
                      SizedBox(height: 50),
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Username is required!';
                          }else if(value!.length<3){
                            return '3 minimum characters required';
                          }
                        },
                        decoration: InputDecoration(
                            label: Text(
                              "Username",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            errorStyle: TextStyle(color: const Color.fromARGB(255, 204, 23, 10),fontSize: 18),
                            floatingLabelStyle: TextStyle(
                              color: Color.fromARGB(239, 15, 15, 238),
                            )),
                            
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Email is required (name@example.com)!';
                          }
                        },
                        decoration: InputDecoration(
                            label: Text(
                              "Email",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            errorStyle: TextStyle(color: const Color.fromARGB(255, 204, 23, 10),fontSize: 18),
                            floatingLabelStyle: TextStyle(
                              color: Color.fromARGB(239, 15, 15, 238),
                            )),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value){
                          passwordInput.text = value!;
                          if(value!.isEmpty){
                            return 'Password is required!';
                          }else if(value!.length<6){
                            return '6 minimum characters required';
                          }
                        },
                        obscureText: secured,
                        decoration: InputDecoration(
                            label: Text(
                              "Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            errorStyle: TextStyle(color: const Color.fromARGB(255, 204, 23, 10),fontSize: 18),
                            floatingLabelStyle: TextStyle(
                                color: Color.fromARGB(239, 15, 15, 238)),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  secured = !secured;
                                  eyeIcon =  eyeIcon == Icons.visibility_off?Icons.visibility:Icons.visibility_off;
                                });
                              },
                              child: Icon(eyeIcon)))
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: (value){
                          if(value! != passwordInput.text){
                            return 'Password confirmation is not matching your password!';
                          }
                        },
                        obscureText: secured,
                        decoration: InputDecoration(
                            label: Text(
                              "Confirm Password",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                            errorStyle: TextStyle(color: const Color.fromARGB(255, 204, 23, 10),fontSize: 18),
                            floatingLabelStyle: TextStyle(
                                color: Color.fromARGB(239, 15, 15, 238)),
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  secured = !secured;
                                  eyeIcon =  eyeIcon == Icons.visibility_off?Icons.visibility:Icons.visibility_off;
                                });
                              },
                              child: Icon(eyeIcon))),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                                value: _checked,
                                onChanged: (value) {
                                  setState(() {
                                    _checked = !_checked;
                                  });
                                }),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: EdgeInsets.only(top: 18),
                              child: Column(
                                children: [
                                  Text(
                                    "By creating an account you have to agree with our terms & conditions.",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: ElevatedButton(
                              onPressed: () {
                                
                                if(_formkey.currentState!.validate() && _checked){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const SuccessfullScreen(),
                                    ));}
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: EdgeInsets.symmetric(vertical: 15)),
                              child: Text(
                                "Login",
                                style: TextStyle(color: Colors.white, fontSize: 20),
                              )),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
