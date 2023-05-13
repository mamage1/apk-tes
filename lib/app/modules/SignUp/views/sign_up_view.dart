import 'package:ajheryuk/app/controller/auth_controller.dart';
import 'package:ajheryuk/app/modules/widget/costum_button.dart';
import 'package:ajheryuk/app/routes/app_pages.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  final authC = Get.find<AuntController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/Logo Mark.png'),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Fullname',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
                child: TextFormField(
                  controller: controller.emailC,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16, bottom: 16),
                child: TextFormField(
                  controller: controller.passC,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    CostumButton(
                      text: 'Sign Up',
                      margin: EdgeInsets.only(left: 16, right: 16, top: 8),
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 140),
                      onPressed: () => authC.SignUp(
                          controller.emailC.text, controller.passC.text),
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Image.asset('assets/images/Text Line.png'),
                    SizedBox(
                      height: 8,
                    ),
                    CostumButton(
                      img: Image.asset('assets/icons/facebook.png'),
                      text: 'Log In With Facebook',
                      margin: EdgeInsets.only(left: 16, right: 16, top: 8),
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 100),
                      onPressed: () {},
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CostumButton(
                      img: Image.asset('assets/icons/google.png'),
                      text: 'Log In With Google',
                      margin: EdgeInsets.only(left: 16, right: 16, top: 8),
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 105),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () => Get.toNamed(Routes.LOGIN),
                            child: Text("Already Have Account?"))
                      ],
                    ),
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
