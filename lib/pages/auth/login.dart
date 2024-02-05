import 'package:ecommerce_app/widgets/my_button.dart';
import 'package:ecommerce_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Login extends StatelessWidget {
  final Function()? onTap;
  const Login({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    CrossAxisAlignment.stretch;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8, top: 50),
                child: Column(
                  children: [
                    Lottie.asset(
                      'assets/images/loginanime.json',
                      width: 200,
                      height: 200,
                      repeat: true,
                      reverse: false,
                      animate: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 2,
                      ),
                      child: const Text("Login Your Account",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 26)),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1,
                    right: 35,
                    left: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MyTextField(
                      hintText: "email",
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextField(
                        hintText: "password",
                        obscureText: true,
                        keyboardType: TextInputType.text),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 200),
                        ),
                        const SizedBox(
                          width: 4,
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: onTap,
                          child: const Text(
                            "Forgot password ?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    MyButton(
                      buttonName: "Login",
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    //  ElevatedButton(onPressed: () {}, child: Text("Login"))
                    Row(
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: onTap,
                          child: const Text(
                            "Register Now",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
