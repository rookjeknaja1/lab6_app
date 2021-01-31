import 'package:flutter/material.dart';
import 'package:flutter_application_1/registerinfo.dart';

class SingUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff363F46),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff63BFDF),
        title: Text(
          'Sing-Up',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingUpForm(),
    );
  }
}

class SingUpForm extends StatefulWidget {
  @override
  SingUpFormWidget createState() => SingUpFormWidget();
}

class SingUpFormWidget extends State {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController personalController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String repassword;
  String firstname;
  String lastname;
  String gender;
  String personal;
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Theme(
                data:
                    Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter your Email.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      email = emailController.text;
                    });
                  },
                  controller: emailController,
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 20.0, color: Color(0xFF000000)),
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
                data:
                    Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter your Password.';
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
                      color: Color(0xff828282),
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
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Theme(
                data:
                    Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter your Re-Password.';
                    }
                    if (value != passwordController.text) {
                      return 'Password is not Match.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      repassword = repasswordController.text;
                    });
                  },
                  autofocus: false,
                  obscureText: true,
                  controller: repasswordController,
                  style: TextStyle(fontSize: 22.0, color: Color(0xFF000000)),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(fontSize: 15, color: Colors.yellow),
                    filled: true,
                    fillColor: Color(0xffFCFAEF),
                    prefixIcon: ImageIcon(
                      AssetImage('assets/log-gray.png'),
                      color: Color(0xff828282),
                    ),
                    hintText: ('Re-Password'),
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
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Theme(
                data:
                    Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter your Firstname.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      firstname = firstnameController.text;
                    });
                  },
                  controller: firstnameController,
                  autofocus: false,
                  style: TextStyle(fontSize: 22.0, color: Color(0xFF000000)),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(fontSize: 15, color: Colors.yellow),
                    filled: true,
                    fillColor: Color(0xffFCFAEF),
                    prefixIcon: ImageIcon(
                      AssetImage('assets/pen-gray.png'),
                      color: Color(0xff828282),
                    ),
                    hintText: 'Firstname',
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
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Theme(
                data:
                    Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter your Lastname.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      lastname = lastnameController.text;
                    });
                  },
                  controller: lastnameController,
                  autofocus: false,
                  style: TextStyle(fontSize: 22.0, color: Color(0xFF000000)),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(fontSize: 15, color: Colors.yellow),
                    filled: true,
                    fillColor: Color(0xffFCFAEF),
                    prefixIcon: ImageIcon(
                      AssetImage('assets/pen-gray.png'),
                      color: Color(0xff828282),
                    ),
                    hintText: 'Lastname',
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
              height: 20.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                ),
                Text(
                  'Gender :',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                ButtonBar(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: 'male',
                              groupValue: gender,
                              activeColor: Color(0xffEB721B),
                              onChanged: (value) {
                                setState(() {
                                  gender = value;
                                });
                              },
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              padding: const EdgeInsets.all(10.00),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage('assets/male-skyblue.png'),
                              )),
                            ),
                            Text(
                              'Male',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Radio(
                              value: 'female',
                              groupValue: gender,
                              activeColor: Color(0xffEB721B),
                              onChanged: (value) {
                                setState(() {
                                  gender = value;
                                });
                              },
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              padding: const EdgeInsets.all(10.00),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage('assets/female-pink.png'),
                              )),
                            ),
                            Text(
                              'Female',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 18.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Theme(
                data:
                    Theme.of(context).copyWith(splashColor: Colors.transparent),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      personal = personalController.text;
                    });
                  },
                  controller: personalController,
                  textInputAction: TextInputAction.done,
                  autofocus: false,
                  keyboardType: TextInputType.multiline,
                  maxLines: 3,
                  style: TextStyle(fontSize: 22.0, color: Color(0xFF000000)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffFCFAEF),
                    hintText: 'Personal description',
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
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            RaisedButton(
              padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
              color: Color(0xffEB721B),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.7),
                  side: BorderSide(color: Color(0xffEB721B))),
              child: Text('Sing Up',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.white)),
              onPressed: () {
                print('Singup Pressed');
                bool pass = _formKey.currentState.validate();
                if (pass) {
                  print('Email: $email');
                  print('Password: $password');
                  print('Re-Password: $repassword');
                  print('Firstname: $firstname');
                  print('Lastname: $lastname');
                  print('Gender: $gender');
                  print('Personal: $personal');
                  showAlertDialog();
                }
              },
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  showAlertDialog() {
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
      title: Text(
        'Please, review your informations',
        style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
      backgroundColor: Color(0xff6FB306),
      content: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        decoration: BoxDecoration(
          color: Color(0xffD8EFFF),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  'Email:',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: const EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                  color: Color(0xffFCFAEF),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.1,
                      offset: Offset(0, 1.5), // changes position of shadow
                    ),
                  ],
                ),
                child: Text(
                  '$email',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  'Password:',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: const EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                  color: Color(0xffFCFAEF),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.1,
                      offset: Offset(0, 1.5), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Text(
                      '$password',
                      style: TextStyle(
                          fontSize: 19.4, fontWeight: FontWeight.w600),
                    ),
                    // Container(
                    //   margin: const EdgeInsets.fromLTRB(110, 0, 0, 0),
                    //   padding: const EdgeInsets.all(12.00),
                    //   decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //     image: AssetImage('assets/see.png'),
                    //   )),
                    // ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  'Firstname:',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: const EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                  color: Color(0xffFCFAEF),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.1,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
                child: Text(
                  '$firstname',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  'Lastname:',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: const EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                  color: Color(0xffFCFAEF),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.1,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
                child: Text(
                  '$lastname',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  'Gender:',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: const EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                  color: Color(0xffFCFAEF),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.1,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
                child: Text(
                  '$gender',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Text(
                  'Description:',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: const EdgeInsets.all(5.00),
                decoration: BoxDecoration(
                  color: Color(0xffFCFAEF),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 0.1,
                      offset: Offset(0, 1.5),
                    ),
                  ],
                ),
                child: Text(
                  '$personal',
                  style: TextStyle(fontSize: 19.4, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        RaisedButton(
          padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
          color: Color(0xffEB1B1B),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.7),
              side: BorderSide(color: Color(0xffEB1B1B))),
          child: Text('Edit',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white)),
          onPressed: () {
            print('Edit Pressed');
            Navigator.pop(context);
          },
        ),
        RaisedButton(
          padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
          color: Color(0xff25C335),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.7),
              side: BorderSide(color: Color(0xff25CF35))),
          child: Text('Confirm',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.white)),
          onPressed: () {
            print('Confirm Pressed');
            Navigator.pop(context);
            Navigator.pushNamed(context, '/registerinfo',
                arguments: Information(
                    emailController.text,
                    passwordController.text,
                    firstnameController.text,
                    lastnameController.text,
                    gender,
                    personalController.text));
          },
        ),
      ],
    );
    showDialog(
      context: context,
      child: alert,
    );
  }
}
