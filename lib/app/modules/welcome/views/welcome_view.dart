import 'package:ajheryuk/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 130,),
                    child: Column(
                      
                      children: [
                       Image.asset("assets/images/Logo Mark.png"),
                      ],
                    ),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      Text('Ajher',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.red,
                      ),),
                      Text('Yuk',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                      ),),
                    ],
                  ),
                  SizedBox(height: 80,),
                  Text('Welcome to Ajheryuk',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500
                  ),),
                  
                      Text('Best and popular apps for live education\n                   course from home',),
                  SizedBox(height: 64,),
                  Container(
                    width: 343,
                    height: 56,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
                    }, 
                    child: Text('Get Started'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    ),
                  ),

                  

                ],
              ),
            ),
          ],
        ),
      
    );
  }
}
