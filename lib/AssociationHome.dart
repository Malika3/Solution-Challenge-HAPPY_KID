import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:happy_kid/AssoProfile.dart';
import 'package:happy_kid/SuggestPage.dart';

class AssociationHome extends StatefulWidget {

  @override
  _AssociationHomeState createState() => _AssociationHomeState();
}

class _AssociationHomeState extends State<AssociationHome> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/welcome.png', width: 50, height: 50),
        backgroundColor: Color(0xfffdeb6d),
        iconTheme: IconThemeData(color: Color(0xffec644e)),

      ),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 150,

              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xfffdeb6d),

                ),

              ),
            ),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                  'Profile', style: TextStyle(color: Color(0xffec644e)),),
                onTap: () =>
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AssoProfile()),
                    )

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings', style: TextStyle(color: Color(0xffec644e)),),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xfffdeb6d),
        backgroundColor: Colors.white,
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Color(0xffec644e),),
          Icon(Icons.search, size: 30, color: Color(0xffec644e)),
          Icon(Icons.notifications, size: 30, color: Color(0xffec644e)),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),

      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          MaterialButton(
            minWidth: 100,
            height: 40,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SuggestPage()));

            },
            color: Color(0xffec644e),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
            ),
            child: Text(
              "Suggest",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          buildImageInteractionCard(),
          buildImageInteractionCard2(),
          buildImageInteractionCard3(),

        ],

      ),
    );
  }


  Widget buildImageInteractionCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage("assets/assoEx.png"),
              height: 100,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 75,
              right: 16,
              left: 16,
              child: Text(
                'By: Smile Association',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.white,
                  color: Color(0xffec644e),
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
        Padding(

          padding: EdgeInsets.all(16).copyWith(bottom: 0),

          child: Text(
            'We are suggesting a little needy family with 3 kids under the age of 15 consult the suggestion for more details to donate and help',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(

              child: Text('Consult',style: TextStyle(color:Color(0xffec644e)),),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Share', style: TextStyle(color:Color(0xffec644e)),),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );


  Widget buildImageInteractionCard2() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage("assets/nada.jpg"),
              height: 110,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 85,
              right: 16,
              left: 16,
              child: Text(
                'By: NADA Association',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.white,
                  color: Color(0xffec644e),
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),

        Padding(

          padding: EdgeInsets.all(16).copyWith(bottom: 0),

          child: Text(
            'We are suggesting a little needy family with 3 kids under the age of 15 consult the suggestion for more details to donate and help',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(

              child: Text('Consult',style: TextStyle(color:Color(0xffec644e)),),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Share', style: TextStyle(color:Color(0xffec644e)),),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );



  Widget buildImageInteractionCard3() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: AssetImage("assets/pic.jpg"),
              height: 120,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 5,
              right: 16,
              left: 16,
              child: Text(
                'By: AAEFAB Association',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.white,
                  color: Color(0xffec644e),
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
        Padding(

          padding: EdgeInsets.all(16).copyWith(bottom: 0),

          child: Text(
            'We are suggesting a little needy family with 3 kids under the age of 15 consult the suggestion for more details to donate and help',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(

              child: Text('Consult',style: TextStyle(color:Color(0xffec644e)),),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Share', style: TextStyle(color:Color(0xffec644e)),),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );



}