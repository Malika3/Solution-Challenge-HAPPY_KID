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
          // double.infinity make it big as my parent allowsr
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
          Container(
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/welcome.png")

                )
            ),
          ),
            Padding(
              padding: EdgeInsets.all(25.0),),
          Text(
            "If you are an association you can help mentioning in the app poor families having kids under the age of 15",
            textAlign: TextAlign.center,

            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xffec644e),


          ),

        ),
            Divider(
              color: Colors.black,
            ),
            Text(
              "Or you are not? What do you think of spreading  joy to those kids mentioned by any association",
              textAlign: TextAlign.center,

              style: TextStyle(
                fontWeight: FontWeight.bold,
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