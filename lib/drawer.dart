import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff566582),
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Image(
                  image: AssetImage('assets/home.png'),
                ),
              ),
            ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 30,
                  minHeight: 30,
                  maxWidth: 30,
                  maxHeight: 30,
                ),
                child: Image.asset(
                  'assets/nav-home.png',
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
              ),
              tileColor: Color(0xff7996B1),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                print('Home');
              },
            ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 30,
                  minHeight: 30,
                  maxWidth: 30,
                  maxHeight: 30,
                ),
                child: Image.asset(
                  'assets/nav-profile.png',
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
              ),
              tileColor: Color(0xff7996B1),
              title: Text(
                'Profile',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                print('Profile');
              },
            ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 33,
                  minHeight: 33,
                  maxWidth: 33,
                  maxHeight: 33,
                ),
                child: Image.asset(
                  'assets/nav-service.png',
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
              ),
              tileColor: Color(0xff7996B1),
              title: Text(
                'Service',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                print('Service');
              },
            ),
            ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 30,
                  minHeight: 30,
                  maxWidth: 30,
                  maxHeight: 30,
                ),
                child: Image.asset(
                  'assets/nav-logout.png',
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
              ),
              tileColor: Color(0xff7996B1),
              title: Text(
                'Logout',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                print('Logout');
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
