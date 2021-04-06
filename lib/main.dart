import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:happy_kid/onboarding3.dart';
import 'package:happy_kid/onboarding1.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfffdeb6d),
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[

                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(60.0),),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/welcome.png")

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),),
                  Text("Every kid deserves to be happy",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffec644e),
                      fontSize: 13,
                      fontWeight: FontWeight.normal,


                    ),

                  ),


                ],
              ),


              Column(
                children: <Widget>[

                  // creating the next button
                  SizedBox(height:20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> onboarding1()));

                    },
                    color: Color(0xffec644e),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),
                    ),
                  )

                ],
              )



            ],
          ),
        ),
      ),
    );
  }
}