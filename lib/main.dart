import 'package:PetPals/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:PetPals/login.dart';
import 'package:PetPals/signup.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()));
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: const Color(0xff363636),
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.1), BlendMode.dstATop),
                        image: AssetImage('assets/garden.jpg'),
                        fit: BoxFit.cover)),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: <Widget>[
                        Container(
                            height: MediaQuery.of(context).size.height / 3,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/petpals-logo.png')))),
                        SizedBox(height: 120)
                      ]),
                      Text("WELCOME TO PETPALS!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                              letterSpacing: 2.0,
                              fontFamily: 'Oswald',
                              color: Colors.white)),
                      Text("Your furry friend's happiness, at your fingertips.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      Column(children: <Widget>[
                        MaterialButton(
                            color: Colors.orange[700],
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text("Continue",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    color: Colors.white))),
                        SizedBox(height: 20),
                        MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupPage()));
                            },
                            color: Colors.yellow[800],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text("Register",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Poppins',
                                    fontSize: 17)))
                      ])
                    ]))));
  }
}
