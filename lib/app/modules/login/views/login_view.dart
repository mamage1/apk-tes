import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../controller/auth_controller.dart';
import '../controllers/login_controller.dart';
import '../../SignUp/views/sign_up_view.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    final authC = Get.find<AuntController>();
    return Scaffold(
      body: ListView(children: [
        Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Image.asset('assets/images/Logo Mark.png'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    TextField(
                      controller: controller.emailC,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextField(
                      obscureText: true,
                      controller: controller.passC,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    ElevatedButton(
                      onPressed: () => authC.login(
                          controller.emailC.text, controller.passC.text),
                      child: Text('Log in'),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(400, 56),
                          backgroundColor: Colors.red,
                          textStyle: TextStyle(
                            fontSize: 16,
                          )),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                        onTap: () {}, child: Text('Forgot Password?')),
                    SizedBox(
                      height: 32,
                    ),
                    Image.asset('assets/images/Text Line.png'),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 400,
                        height: 56,
                        color: Colors.blue[600],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/facebook.png',
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'Log In With Facebook',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 400,
                        height: 56,
                        color: Colors.grey[200],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/google.png',
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Text(
                              'Log In With Google',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account ?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpView(),
                        ),
                      );
                    },
                    child: Text(
                      ' Sign Up',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
