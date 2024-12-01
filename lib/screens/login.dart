// import 'package:e_commerce_app/shared/textfield.dart';
import 'package:e_commerce_app/constants/constants.dart';
import 'package:e_commerce_app/screens/register.dart';
import 'package:e_commerce_app/util/app_color.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 247, 247, 247),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(33.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: inputFieldDecoration.copyWith(
                      hintText: "Enter Your Email:",
                    ),
                  ),
                  // TextFieldW(
                  //   inputType:TextInputType.emailAddress,
                  //   isPassword: false,
                  //   hintTxt: "Enter Your Email:"
                  // ),
                  const SizedBox(
                    height: 33,
                  ),
                  // TextFieldW(
                  //   inputType:TextInputType.text,
                  //   isPassword: true,
                  //   hintTxt: "Enter Your Password:"
                  // ),
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
                  // MaterialStateProperty is deprecated
                  //ElevatedButton(
                  //   onPressed: () {},
                  //   child: Text(
                  //     "click here",
                  //     style: TextStyle(fontSize: 19),
                  //   ),
                  //   style: ButtonStyle(
                  //     backgroundColor: MaterialStateProperty.all(BTNgreen),
                  //     padding: MaterialStateProperty.all(
                  //       EdgeInsets.all(12),
                  //     ),
                  //     shape: MaterialStateProperty.all(
                  //       RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(8)),
                  //     ),
                  //   ),
                  // )
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sig In",
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
                        "Do not have an account?",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RegisterPage()));
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ))
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
