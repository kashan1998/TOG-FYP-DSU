import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen_tutor.dart';
//import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninAs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: size.height,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/main_top.png",
                  width: size.width * 0.3,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/main_bottom.png",
                    width: size.width * 0.2,
                  ),
                ),
                SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: size.height * 0.075),
                        Text(
                          "WELCOME TO TOG",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: size.height * 0.05),
                        SvgPicture.asset("assets/icons/chat.svg",
                            height: size.height * 0.45),
                        //Image.asset("assets/icons/chat.svg"),
                        SizedBox(height: size.height * 0.05),
                        RoundedButton(
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignUpScreen();
                                },
                              ),
                            );
                          },
                          text: "SIGN UP AS STUDENT",
                          textColor: Colors.black,
                          color: kPrimaryLightColor,
                        ),
                        //SizedBox(height: size.height * 0.05),

                        RoundedButton(
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignUpScreen_Tutor();
                                },
                              ),
                            );
                          },
                          text: "SIGN UP AS TUTOR",
                          textColor: Colors.white,
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

//                   Image.asset(
//                     "assets/icons/chat.svg",
//                     height: size.height * 0.45,
//                   ),
//                   SizedBox(height: size.height * 0.05),
//                 ],
//               ),
//             )
//           ]),
