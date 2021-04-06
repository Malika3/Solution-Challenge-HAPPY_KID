import 'package:flutter/material.dart';
import 'package:happy_kid/onboarding2.dart';

class onboarding1 extends StatelessWidget {
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
              padding: EdgeInsets.all(50.0),),
          Container(
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/kids.png")

                )
            ),
          ),
            Padding(
              padding: EdgeInsets.all(60.0),),
          Text(
            "Do you want to spread joy for some kids?",
            textAlign: TextAlign.center,

            style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Color(0xffec644e),


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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> onboarding2()));

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