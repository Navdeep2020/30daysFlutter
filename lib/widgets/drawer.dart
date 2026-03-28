import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  
  @override
  Widget build(BuildContext context) {
    final imageURL = "https://media.licdn.com/dms/image/v2/D5603AQH72R2wehz5zQ/profile-displayphoto-scale_200_200/B56ZwAVTCJK4Ak-/0/1769532110842?e=1776297600&v=beta&t=SsONJwCPXoXBIaCLw1gA_4L4Bv3SY1ODP10x49RUP4o";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView (
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Navdeep"), 
                accountEmail: Text("abc@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageURL)
                  ),
                
                ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home"),
            ),
                      ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile"),
            ),
                      ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text("Email"),
            )
          ],
        ),
      ),
    );
  }
}