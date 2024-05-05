import 'package:flutter/material.dart';
import 'package:PetPals/nav.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 226, 225, 225),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                        Column(children: <Widget>[
                          Text("LOGIN YOUR PETPALS' ACCOUNT",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 23)
                        ]),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Column(children: <Widget>[
                              TextFormField(
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person,
                                          color:
                                              Colors.orange.withOpacity(0.5)),
                                      labelText: 'Username',
                                      labelStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.6)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                          borderRadius:
                                              BorderRadius.circular(20)))),
                              const SizedBox(height: 12),
                              TextFormField(
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black.withOpacity(0.6)),
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.lock,
                                          color:
                                              Colors.orange.withOpacity(0.5)),
                                      labelText: 'Password',
                                      labelStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.6)),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                          borderRadius:
                                              BorderRadius.circular(20))))
                            ])),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                                padding: EdgeInsets.only(top: 3, left: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)),
                                child: MaterialButton(
                                    minWidth: double.infinity,
                                    height: 60,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Nav()));
                                    },
                                    color: Colors.yellow,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Text("Login",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            fontSize: 18,
                                            color: Colors.black))))),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Don't have an account?",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.3))),
                              Text(" Sign up",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Colors.orange))
                            ]),
                        Container(
                            padding: EdgeInsets.only(
                                top: 100, left: 400, right: 200),
                            height: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/corgi.png"),
                                    fit: BoxFit.fitHeight)))
                      ]))
                ])));
  }
}

Widget inputFile({label, obscureText = false}) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black87)),
        SizedBox(height: 5),
        TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                enabledBorder: OutlineInputBorder())),
        SizedBox(height: 10)
      ]);
}
