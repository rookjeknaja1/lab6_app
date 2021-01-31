import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawer.dart';

class Member extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  static const routeName = '/member';
  @override
  Widget build(BuildContext context) {
    final MemberInfo args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xff363746),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff63B3D6),
        actions: [
          MaterialButton(
            onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
            color: Color(0xffe0f0f7),
            textColor: Colors.black,
            child: Icon(
              Icons.more_horiz,
              size: 40,
            ),
            padding: EdgeInsets.all(0),
            shape: CircleBorder(),
          )
        ],
        title: Text(
          'Member',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 200, 0, 10),
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 26,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    args.firstname,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Color(0xffFF8299),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '  ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Color(0xffFF8299),
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    args.lastname,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: Color(0xffFF8299),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      endDrawer: MyDrawer(),
    );
  }
}

class MemberInfo {
  final String firstname;
  final String lastname;
  MemberInfo(this.firstname, this.lastname);
}
