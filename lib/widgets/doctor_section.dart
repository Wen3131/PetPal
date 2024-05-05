import 'package:flutter/material.dart';
import '../appoint_screen.dart';

class DoctorSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 340,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Column(children: [
                Container(
                    height: 300,
                    width: 200,
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 107, 105, 105)
                                  .withOpacity(0.8),
                              blurRadius: 3,
                              spreadRadius: 1)
                        ]),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AppointScreen()));
                                },
                                child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                    child: Image.asset(
                                        "assets/doctor${index + 1}.png",
                                        height: 200,
                                        width: 200,
                                        fit: BoxFit.cover))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: EdgeInsets.all(8),
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFF2F8FF),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 107, 106, 106),
                                              blurRadius: 3,
                                              spreadRadius: 1)
                                        ]),
                                    child: Center(
                                        child: Icon(Icons.favorite_outline,
                                            color: Colors.orange, size: 28))))
                          ]),
                          SizedBox(height: 8),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Dra Medina",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.orange)),
                                    Text("Surgeon",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                Colors.black.withOpacity(0.6))),
                                    SizedBox(height: 8),
                                    Row(children: [
                                      Icon(Icons.star, color: Colors.yellow),
                                      SizedBox(width: 5),
                                      Text("4.9",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black))
                                    ])
                                  ]))
                        ]))
              ]);
            }));
  }
}
