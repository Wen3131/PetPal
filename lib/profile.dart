import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double coverHeight = 280;
  final double profileHeight = 140;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.orange.withOpacity(0.8),
            title: Text('Profile',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white)),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                            child: Row(children: [
                              Icon(Icons.image, color: Colors.black54),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text('Change Cover'))
                            ])),
                        PopupMenuItem(
                            child: Row(children: [
                              Icon(
                                Icons.settings,
                                color: Colors.black54,
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text('Settings'))
                            ])),
                        PopupMenuItem(
                            child: Row(children: [
                              Icon(Icons.logout, color: Colors.black54),
                              Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text('Logout'))
                            ]))
                      ],
                      child: Icon(Icons.more_vert, size: 28.0)))
            ]),
        body: ListView(padding: EdgeInsets.zero, children: <Widget>[
          buildTop(),
          buildContent(),
          buildAbout(),
          buildPhoto(context)
        ]));
  }

  Widget buildContent() => Column(children: [
    const SizedBox(height: 8),
    Text('Buchokoy Bebang',
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black)),
    const SizedBox(height: 8),
    Text('University of the Assumption',
        style: TextStyle(fontSize: 15, color: Colors.black)),
    const SizedBox(height: 16),
    Divider(
      color: Colors.black87,
      indent: 50,
      endIndent: 50,
      height: 10,
      thickness: 0.2,
    ),
    SizedBox(height: 15),
  ]);

  Widget buildAbout() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 48.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('About Profile',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          Text('- PaoPao',
              style: TextStyle(fontSize: 15, height: 1.4)),
          const SizedBox(height: 2),
          Text('- Lives at Sa puso mo yieee <3',
              style: TextStyle(fontSize: 15, height: 1.4)),
          const SizedBox(
              height: 20
          ),
          Divider(
            color: Colors.black87,
            indent: 5,
            endIndent: 5,
            height: 10,
            thickness: 0.2,
          ),
        ]));
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 1;

    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: bottom),
            child: buildCoverImage(),
          ),
          // buildCoverImage(),
          Positioned(top: top, child: buildProfileImage())
        ]);
  }

  Widget buildCoverImage() {
    var coverHeight;
    return Container(
        color: Colors.black45,
        child: Image.network(
            'https://scontent.fcrk1-3.fna.fbcdn.net/v/t39.30808-6/301129521_463053359170086_2959653567530060058_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=8631f5&_nc_eui2=AeEzWKWfpQt-ird_rs1EDW8RRNyy2nn_NgVE3LLaef82BRkUxzeIrQuv5MLLvOkvne5SUBPVDGPpGuUB1RzQJazI&_nc_ohc=YWOLrGI5WcUAX_pKv8G&_nc_oc=AQnIzhBNbI6PxO7zMemGEpX2zTXHcxnUffx5f2ZaKgu0AKSRd8T_A27LWKVCkxlMKLw&_nc_ht=scontent.fcrk1-3.fna&oh=00_AfBfMb1ElecTnnogC18uhZDnTIMOTz-cpjAwKJ7yWESO3g&oe=641C8456',
            width: double.infinity,
            height: 210.0,
            fit: BoxFit.cover));
  }

  Widget buildProfileImage() => CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: NetworkImage(
          'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/336746800_1008615853450671_4176455470396750945_n.jpg?stp=dst-jpg_p526x296&_nc_cat=103&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeFavq2UKVG6GdLHSd-GDBG1wKXMNieBq4LApcw2J4GrgmsecPt-4ukdA0UIYYlx-oaqCgvFydv6bNC5YqEKlzd5&_nc_ohc=m2rsp3B_1qIAX-VXwKE&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfCFGfkNBLUGtSfnWV4UXHxjVBLtu8nYGbXegWU1pYg2mQ&oe=641C6F9A'));
}

Widget buildPhoto(BuildContext context) {
  return Container(
      height: 500,
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/336746800_1008615853450671_4176455470396750945_n.jpg?stp=dst-jpg_p526x296&_nc_cat=103&ccb=1-7&_nc_sid=5cd70e&_nc_eui2=AeFavq2UKVG6GdLHSd-GDBG1wKXMNieBq4LApcw2J4GrgmsecPt-4ukdA0UIYYlx-oaqCgvFydv6bNC5YqEKlzd5&_nc_ohc=m2rsp3B_1qIAX-VXwKE&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfCFGfkNBLUGtSfnWV4UXHxjVBLtu8nYGbXegWU1pYg2mQ&oe=641C6F9A'))),
            Container(
                margin: EdgeInsets.only(left: 10, top: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Buchokoy Bebang',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text('January 19, 2022',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                      const SizedBox(height: 5),
                      Padding(
                          padding: EdgeInsets.only(left: 0.0),
                          child: Text('Happy Birthday to my precious baby paopao!'))
                    ]))
          ]),
          Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Row(children: [
                          Icon(Icons.copy, color: Colors.black54),
                          Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text('Copy Link'))
                        ])),
                    PopupMenuItem(
                        child: Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.black54,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text('Add to Favorites'))
                        ])),
                    PopupMenuItem(
                        child: Row(children: [
                          Icon(
                            Icons.report,
                            color: Colors.black54,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text('Report Post'))
                        ]))
                  ],
                  child: Icon(Icons.more_horiz, size: 28.0)))
        ]),
        ConstrainedBox(
            constraints: new BoxConstraints(
              minHeight: 150,
              minWidth: 150,
              maxHeight: 350.0,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.network(
                    "https://scontent.fcrk1-5.fna.fbcdn.net/v/t39.30808-6/336446287_2109296992596558_1116622703307206086_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=dbeb18&_nc_eui2=AeE-jzwivv450zyyAQ622EI5xx4x_w2mzojHHjH_DabOiIExmByhsinjXEycwn0VEWNUM7SM2tK3I4R1CTi3hvBN&_nc_ohc=63EgVjEm_RwAX_tQPEV&_nc_ht=scontent.fcrk1-5.fna&oh=00_AfDqbuqYPLboq6F7odCbjftVt8frMBOJFHECrtIeNuCrHg&oe=641D1F9A"))),
        Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.33,
                  child: Container(
                      width: 100,
                      child: Row(children: [
                        Container(
                            alignment: Alignment.center,
                            width: 30,
                            child: Icon(Icons.favorite_outline_rounded,
                                color: Colors.red)),
                        Container(
                            alignment: Alignment.center,
                            width: 30,
                            child: Text("Love",
                                style: TextStyle(color: Colors.black)))
                      ]))),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.33,
                  child: Container(
                      width: 100,
                      child: Row(children: [
                        Container(
                            alignment: Alignment.center,
                            width: 30,
                            child:
                            Icon(Icons.comment, color: Colors.grey[300])),
                        Container(
                            alignment: Alignment.center,
                            child: Text("Comment",
                                style: TextStyle(color: Colors.black)))
                      ]))),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.33,
                  child: Container(
                      width: 100,
                      child: Row(children: [
                        Container(
                            alignment: Alignment.center,
                            width: 30,
                            child: Icon(Icons.arrow_circle_right_sharp,
                                color: Colors.grey[300])),
                        Container(
                            alignment: Alignment.center,
                            child: Text("Share",
                                style: TextStyle(color: Colors.black)))
                      ])))
            ])
      ]));
}


