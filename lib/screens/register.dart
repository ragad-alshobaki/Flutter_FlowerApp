// import 'package:e_commerce_app/shared/textfield.dart';
import 'package:e_commerce_app/constants/constants.dart';
import 'package:e_commerce_app/screens/login.dart';
import 'package:e_commerce_app/util/app_color.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 247, 247, 247),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(33.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 64,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: inputFieldDecoration.copyWith(
                        hintText: "Enter Your username:",
                      ),
                    ),
                    const SizedBox(
                      height: 33,
                    ),                  
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      decoration: inputFieldDecoration.copyWith(
                        hintText: "Enter Your Email:",
                      ),
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: inputFieldDecoration.copyWith(
                        hintText: "Enter Your Password:",
                      ),
                      // decoration: inputFieldDecoration,
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: const TextStyle(color: Colors.white, fontSize: 19),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: BTNgreen,
                        padding: EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Have alreaddy account?",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const LoginPage()));
                            },
                            child: Text(
                              'Sig In',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
