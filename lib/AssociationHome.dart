import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:happy_kid/AssoProfile.dart';



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
          title: Image.asset('assets/welcome.png', width:50,height: 50),
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
                    title: Text('Profile',style: TextStyle(color: Color(0xffec644e)),),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AssoProfile()),
                )

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings', style: TextStyle(color: Color(0xffec644e)),),
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
          backgroundColor:Colors.white,
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.search, size: 30, color: Color(0xffec644e),),
            Icon(Icons.home, size: 30,color: Color(0xffec644e)),
            Icon(Icons.notifications, size: 30, color: Color(0xffec644e)),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                RaisedButton(
                  child: Text('Go To Page of index 1'),
                  onPressed: () {
                    //Page change using state does the same as clicking index 1 navigation button
                    final CurvedNavigationBarState navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState.setPage(1);
                  },
                )
              ],
            ),
          ),
        )


    );
  }
}
