import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://cdn-icons-png.flaticon.com/512/3135/3135715.png";
    return Drawer(
      child: Container(
        color: Colors.white24,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero, // Corrected padding syntax
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                ),
                accountName: Text("Sarthak Sonawane"),
                accountEmail: Text("sarthaksonawane@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      NetworkImage(imageUrl), // Fixed image handling
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text(
                "Home",
                textScaleFactor: 1.2, // Corrected scale factor syntax
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text(
                "Profile",
                textScaleFactor: 1.2, // Corrected scale factor syntax
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text(
                "Email Me",
                textScaleFactor: 1.2, // Corrected scale factor syntax
              ),
            ),
             ListTile(
              leading: Icon(CupertinoIcons.circle_filled),
              title: Text(
                "FeedBack",
                
                textScaleFactor: 1.2, // Corrected scale factor syntax
              ),
            ),
          ],
        ),
      ),
    );
  }
}
