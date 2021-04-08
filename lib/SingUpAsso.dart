import 'package:flutter/material.dart';
import 'package:happy_kid/AssociationHome.dart';
import 'package:happy_kid/onboarding2.dart';

class SignUpAsso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfffdeb6d),

      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor:Color(0xfffdeb6d),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Color(0xffec644e),),


        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffec644e),


                    ),),
                  SizedBox(height: 20,),
                  Text("Create an account, It's free ",
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.grey[700]),)


                ],
              ),
              Column(
                children: <Widget>[
                  inputFile(label: "Association Name"),
                  inputFile(label: "Address"),
                  inputFile(label: "Email"),
                  inputFile(label: "Phone Number"),
                  inputFile(label: "Password", obscureText: true),
                  inputFile(label: "Confirm Password ", obscureText: true),


                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration:
                BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                      top: BorderSide(color: Colors.white),
                      left: BorderSide(color: Colors.white),
                      right: BorderSide(color: Colors.white),



                    )

                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=> AssociationHome()));},
                  color: Color(0xffec644e),
                  elevation: 0,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),


                  ),
                  child: Text(
                    "Sign up", style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.white,

                  ),
                  ),

                ),



              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?", style: TextStyle(color: Colors.grey[700]),),
                  Text(" Login", style:TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.grey,
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



// we will be creating a widget for text field
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Color(0xffec644e),
        ),

      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0,
                horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color:Color(0xffec644e),

              ),

            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}