import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_application_1/member.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Page();
  }
}

class Page extends StatefulWidget {
  @override
  PageWidget createState() => PageWidget();
}

class PageWidget extends State {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  Widget build(BuildContext context) {
    final InformationforLogin args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xffA63F5F),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff63F3D6),
        title: Text(
          'Log-in',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    width: 225,
                    height: 225,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Color(0xffF4AAF2)),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.cloudflare.steamstatic.com/apps/dota2/images/rekindlingsoul/sfarcana.jpg'),
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(splashColor: Colors.transparent),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter your Email.';
                      }
                      if (value != args.email) {
                        return 'Email is Wrong';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        email = emailController.text;
                      });
                    },
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    style: TextStyle(fontSize: 22.0, color: Color(0xFF000000)),
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 15, color: Colors.yellow),
                      filled: true,
                      fillColor: Color(0xffFCFAEF),
                      prefixIcon: ImageIcon(
                        AssetImage('assets/mail-gray.png'),
                        color: Color(0xff828282),
                      ),
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 20),
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFCFAEF)),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFCFAEF)),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFCFAEF)),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFCFAEF)),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(splashColor: Colors.transparent),
                  child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter your Password.';
                      }
                      if (value != args.password) {
                        return 'Password is Wrong';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        password = passwordController.text;
                      });
                    },
                    autofocus: false,
                    obscureText: true,
                    controller: passwordController,
                    style: TextStyle(fontSize: 22.0, color: Color(0xFF000000)),
                    decoration: InputDecoration(
                      errorStyle: TextStyle(fontSize: 15, color: Colors.yellow),
                      filled: true,
                      fillColor: Color(0xffFCFAEF),
                      prefixIcon: ImageIcon(
                        AssetImage('assets/log-gray.png'),
                        color: Color(0xff82F28F),
                      ),
                      hintText: ('Password'),
                      hintStyle: TextStyle(fontSize: 20),
                      contentPadding: const EdgeInsets.only(
                          left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFCFAEF)),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFCFAEF)),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFCFAEF)),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffFCFAEF)),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
                color: Color(0xffA007A1B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.7),
                    side: BorderSide(color: Color(0xffEB1B))),
                child: Text('Log in',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: Colors.white)),
                onPressed: () {
                  print('Login Pressed');
                  bool pass = _formKey.currentState.validate();
                  if (pass) {
                    print('Email: $email');
                    print('Password: $password');
                    Navigator.pushNamed(
                      context,
                      '/member',
                      arguments: MemberInfo(args.firstname, args.lastname),
                    );
                  }
                },
              ),
              SizedBox(height: 25.0),
              Image.asset('assets/Line-Thin.png'),
              SizedBox(height: 20.0),
              RichText(
                text: TextSpan(
                  text: 'or Don’t have an account? ',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                          color: Color(0xFF000000),
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, '/singup');
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InformationforLogin {
  final String email;
  final String password;
  final String firstname;
  final String lastname;
  InformationforLogin(this.email, this.password, this.firstname, this.lastname);
}
