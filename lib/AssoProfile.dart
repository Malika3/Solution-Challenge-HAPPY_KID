import 'package:flutter/material.dart';

class AssoProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text("Profile", style: TextStyle(color: Color(0xffec644e)),),
          backgroundColor: Color(0xfffdeb6d),
        )
    );
  }
}