import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:PetPals/widgets/doctor_section.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(children: [HomeScreen()]))));
  }
}

class HomeScreen extends StatelessWidget {
  List catNames = ["Dental", "Heart", "Eye", "Brain", "Ear"];

  List<Icon> catIcons = [
    Icon(MdiIcons.toothOutline, color: Colors.yellow, size: 30),
    Icon(MdiIcons.heartPlus, color: Colors.yellow, size: 30),
    Icon(MdiIcons.eye, color: Colors.yellow, size: 30),
    Icon(MdiIcons.brain, color: Colors.yellow, size: 30),
    Icon(MdiIcons.earHearing, color: Colors.yellow, size: 30)
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Stack(children: [
      Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.orange.withOpacity(0.8), Colors.orange],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)))),
      Padding(
          padding: EdgeInsets.only(top: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("ua-logo.png")),
                            Icon(Icons.notifications_outlined,
                                color: Colors.white, size: 30)
                          ]),
                      SizedBox(height: 15),
                      Text("Welcome, Agatha!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 10),
                      Text("Your Pets Health is our\nFirst Priority!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500)),
                      Container(
                          margin: EdgeInsets.only(top: 15, bottom: 20),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    spreadRadius: 3)
                              ]),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search for...",
                                  hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(0.5)),
                                  prefixIcon: Icon(Icons.search, size: 25))))
                    ])),
            Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Categories",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.7)))),
            SizedBox(height: 15),
            Container(
                height: 100,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: catNames.length,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Color(0xFFF2F8FF),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.7),
                                      blurRadius: 4,
                                      spreadRadius: 2)
                                ]),
                            child: Center(child: catIcons[index])),
                        SizedBox(height: 10),
                        Text(catNames[index],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.7)))
                      ]);
                    })),
            SizedBox(height: 30),
            Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text("Recommended Veterinarian",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.7)))),
            DoctorSection()
          ]))
    ])));
  }
}
