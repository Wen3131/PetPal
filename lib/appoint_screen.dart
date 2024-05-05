import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppointScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/doctor1.png"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.orange.withOpacity(0.9),
                    Colors.orange.withOpacity(0),
                    Colors.orange.withOpacity(0)
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(top: 30, left: 10, right: 10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                      onTap: () {},
                                      child: Container(
                                          margin: EdgeInsets.all(8),
                                          height: 45,
                                          width: 45,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF2F8FF),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.6),
                                                    blurRadius: 3,
                                                    spreadRadius: 1)
                                              ]),
                                          child: Center(
                                              child: IconButton(
                                                  icon: Icon(Icons.arrow_back,
                                                      color: Colors.orange,
                                                      size: 28),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  })))),
                                  Container(
                                      margin: EdgeInsets.all(8),
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: Color(0xFFF2F8FF),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.6),
                                                blurRadius: 3,
                                                spreadRadius: 2)
                                          ]),
                                      child: Center(
                                          child: Icon(Icons.favorite_outline,
                                              color: Colors.orange, size: 28)))
                                ])),
                        SizedBox(
                            height: 80,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Experience",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        SizedBox(height: 8),
                                        Text("7 years",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white))
                                      ]),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Patients",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        SizedBox(height: 8),
                                        Text("1.8k",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white))
                                      ]),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Rating",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        SizedBox(height: 8),
                                        Text("4.9",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white))
                                      ])
                                ]))
                      ]))),
          SizedBox(height: 10),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dr Medina",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.orange)),
                    SizedBox(height: 5),
                    Row(children: [
                      Icon(MdiIcons.heartPlus, color: Colors.red, size: 28),
                      SizedBox(width: 5),
                      Text("Surgeon",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black.withOpacity(0.6)))
                    ]),
                    SizedBox(height: 15),
                    Text(
                        "kajsdhkasjdhasdiahkasjdha skdjhasdhauosdhaiusdhasidasdkjhkj ahdkajhaksdjhaksdjahsdajdkjahdjhsadkah",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.6)),
                        textAlign: TextAlign.justify),
                    SizedBox(height: 15),
                    Text("Book Date",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: 8),
                    Container(
                        height: 70,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return InkWell(
                                  child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 5),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 25),
                                      decoration: BoxDecoration(
                                          color: index == 1
                                              ? Colors.yellow
                                              : Color(0xFFF2F8FF),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.6),
                                                blurRadius: 3,
                                                spreadRadius: 1)
                                          ]),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("${index + 8}",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: index == 1
                                                        ? Colors.white
                                                        : Colors.orange
                                                            .withOpacity(0.6))),
                                            Text("MAR",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: index == 1
                                                        ? Colors.white
                                                        : Colors.orange
                                                            .withOpacity(0.6)))
                                          ])));
                            })),
                    SizedBox(height: 5),
                    Text("Book Time",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.6),
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: 8),
                    Container(
                        height: 60,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: index == 2
                                          ? Colors.orange
                                          : Color(0xFFF2F8FF),
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            blurRadius: 3,
                                            spreadRadius: 2)
                                      ]),
                                  child: Center(
                                      child: Text("${index + 8}: 00 AM",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: index == 2
                                                  ? Colors.white
                                                  : Colors.orange
                                                      .withOpacity(0.6)))));
                            })),
                    SizedBox(height: 20),
                    Material(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                            onTap: () {},
                            child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                    child: Text("Book Appointment",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold))))))
                  ]))
        ])));
  }
}
