import 'package:ecommerce_app/widgets/my_button.dart';
import 'package:ecommerce_app/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final Function()? onTap;
  const Register({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              // Background Image
              Positioned.fill(
                child: Image.asset(
                  'assets/images/registerbg.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),

              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 8, top: 100),
                    child: const Text("Lets Create Your Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 26)),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.1,
                        right: 35,
                        left: 35),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyTextFieldRegister(
                            hintText: "Name",
                            obscureText: false,
                            keyboardType: TextInputType.text),
                        const SizedBox(
                          height: 20,
                        ),
                        MyTextFieldRegister(
                            hintText: "Email",
                            obscureText: false,
                            keyboardType: TextInputType.emailAddress),
                        const SizedBox(
                          height: 20,
                        ),

                        MyTextFieldRegister(
                            hintText: "Password",
                            obscureText: true,
                            keyboardType: TextInputType.text),
                        const SizedBox(
                          height: 20,
                        ),

                        MyTextFieldRegister(
                            hintText: "Confirm Password",
                            obscureText: true,
                            keyboardType: TextInputType.text),
                        const SizedBox(
                          height: 20,
                        ),

                        MyButton(buttonName: "Register"),
                        const SizedBox(
                          height: 10,
                        ),
                        //  ElevatedButton(onPressed: () {}, child: Text("Login"))
                        Row(
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(width: 4),
                            GestureDetector(
                              onTap: onTap,
                              child: const Text(
                                "Login here",
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
                  ),
                  const SizedBox(
                    height: 300,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
