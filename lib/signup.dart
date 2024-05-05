import 'package:flutter/material.dart';
import 'package:PetPals/login.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                height: MediaQuery.of(context).size.height - 50,
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 226, 225, 225)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(children: <Widget>[
                        Text("REGISTER TO PETPALS",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(height: 8),
                        Text(
                            "Create your PetPal account &\n Your pets will be assured!",
                            style: TextStyle(fontSize: 12, color: Colors.black))
                      ]),
                      Column(children: <Widget>[
                        TextField(
                            style:
                                TextStyle(color: Colors.black.withOpacity(0.6)),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person,
                                    color: Colors.orange.withOpacity(0.5)),
                                labelText: 'Username',
                                labelStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.6)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.6)),
                                    borderRadius: BorderRadius.circular(20)))),
                        const SizedBox(height: 12),
                        TextField(
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.6)),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email,
                                    color: Colors.orange.withOpacity(0.5)),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.6)),
                                    borderRadius: BorderRadius.circular(20)))),
                        const SizedBox(height: 12),
                        TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.6)),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,
                                    color: Colors.orange.withOpacity(0.5)),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black.withOpacity(0.6)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.6)),
                                    borderRadius: BorderRadius.circular(20)))),
                        const SizedBox(height: 12),
                        TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.6)),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,
                                    color: Colors.orange.withOpacity(0.5)),
                                labelText: 'Confirm Password',
                                labelStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.6)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.6)),
                                    borderRadius: BorderRadius.circular(20))))
                      ]),
                      Container(
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
                                        builder: (context) => LoginPage()));
                              },
                              color: Colors.yellow,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text("Register Account",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17,
                                      color: Colors.black)))),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Already have an account?",
                                style: TextStyle(color: Colors.black)),
                            Text(" Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.orange,
                                    fontSize: 15))
                          ])
                    ]))));
  }
}
