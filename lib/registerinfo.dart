import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class RegisterInfo extends StatelessWidget {
  static const routeName = '/registerinfo';
  @override
  Widget build(BuildContext context) {
    final Information args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xff363746),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff3BFD6),
        title: Text(
          'Register-Information',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(40, 40, 40, 25),
              padding: const EdgeInsets.all(5.00),
              decoration: BoxDecoration(
                color: Color(0xffFF8299),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    padding: const EdgeInsets.all(20.00),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/success.png'),
                    )),
                  ),
                  Text(
                    'Successfully registered',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19.4,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                'Email:',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              padding: const EdgeInsets.all(5.00),
              decoration: BoxDecoration(
                color: Color(0xffFCFAEF),
              ),
              child: Text(
                args.email,
                style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                'Firstname:',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              padding: const EdgeInsets.all(5.00),
              decoration: BoxDecoration(
                color: Color(0xffFCFAEF),
              ),
              child: Text(
                args.firstname,
                style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                'Lastname:',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              padding: const EdgeInsets.all(5.00),
              decoration: BoxDecoration(
                color: Color(0xffFCFAEF),
              ),
              child: Text(
                args.lastname,
                style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                'Gender:',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              padding: const EdgeInsets.all(5.00),
              decoration: BoxDecoration(
                color: Color(0xffFCFAEF),
              ),
              child: Text(
                args.gender,
                style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Text(
                'Description:',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19.4,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              padding: const EdgeInsets.all(5.00),
              decoration: BoxDecoration(
                color: Color(0xffFCFAEF),
              ),
              child: Text(
                args.personal,
                style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  color: Color(0xffEB721B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.7),
                      side: BorderSide(color: Color(0xffEB721B))),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        padding: const EdgeInsets.all(20.00),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/home.png'),
                        )),
                      ),
                      Text('Homepage',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Colors.white)),
                    ],
                  ),
                  onPressed: () {
                    print('Homepage Pressed');
                    Navigator.pushNamed(
                      context,
                      '/login',
                      arguments: InformationforLogin(args.email, args.password,
                          args.firstname, args.lastname),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Information {
  final String email;
  final String password;
  final String firstname;
  final String lastname;
  final String gender;
  final String personal;
  Information(this.email, this.password, this.firstname, this.lastname,
      this.gender, this.personal);
}
