import 'dart:ui';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Heros/tutordetail.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/LoginAs/LogInAsScreen.dart';
import 'package:flutter_auth/Screens/Tutors/AllTutors.dart';
import 'package:flutter_auth/StudentDrawer.dart';
import 'package:flutter_auth/constants.dart';

class TutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int exp_index;
    // bottombarScreen(int i) {
    //   if (i == 0) {
    //     return TutorBackGround();
    //   } else if (i == 1) {
    //     return LoginScreen();
    //   } else if (i == 2) {
    //     return LoginAs();
    //   } else {
    //     return TutorBackGround();
    //   }
    // }

    return Scaffold(
        bottomNavigationBar: ConvexAppBar(
            backgroundColor: kPrimaryColor,
            items: [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.map, title: 'Discovery'),
              TabItem(icon: Icons.add, title: 'Add'),
              // TabItem(icon: Icons.message, title: 'Message'),
              // TabItem(icon: Icons.people, title: 'Profile'),
            ],
            // initialActiveIndex: 2, //optional, default as 0
            onTap: (int index) {
              print('click index=$index');
              //   exp_index = index;
            }),
        body: TutorBackGround()
        //bottombarScreen(exp_index),
        );
  }
}

class TutorBackGround extends StatefulWidget {
  @override
  _TutorBackGroundState createState() => _TutorBackGroundState();
}

class _TutorBackGroundState extends State<TutorBackGround> {
  List<info> infos = [
    info(
      color1: Colors.red[300],
      color2: Colors.red[200],
      image: "assets/images/tutor.PNG",
      colorImage: "assets/images/redcircle.png",
      t1: "Dr. Name",
      t2: "Qualification",
      t3: "Address",
      textColor: Colors.black,
    ),
    info(
      color1: Colors.purple[300],
      color2: Colors.purple,
      image: "assets/images/tutor0.PNG",
      colorImage: "assets/images/purplecircle.png",
      t1: "Dr. Name",
      t2: "Qualification",
      t3: "Address",
      textColor: Colors.white,
    ),
    info(
      color1: Colors.purple[300],
      color2: Colors.purple,
      image: "assets/images/tutor0.PNG",
      colorImage: "assets/images/purplecircle.png",
      t1: "Dr. Name",
      t2: "Qualification",
      t3: "Address",
      textColor: Colors.white,
    ),
    info(
      color1: Colors.red[300],
      color2: Colors.red[200],
      image: "assets/images/tutor.PNG",
      colorImage: "assets/images/redcircle.png",
      t1: "Dr. Name",
      t2: "Qualification",
      t3: "Address",
      textColor: Colors.black,
    ),
    info(
      color1: Colors.purple[300],
      color2: Colors.purple,
      image: "assets/images/tutor0.PNG",
      colorImage: "assets/images/purplecircle.png",
      t1: "Dr. Name",
      t2: "Qualification",
      t3: "Address",
      textColor: Colors.white,
    ),
    info(
      color1: Colors.red[300],
      color2: Colors.red[200],
      image: "assets/images/tutor.PNG",
      colorImage: "assets/images/redcircle.png",
      t1: "Dr. Name",
      t2: "Qualification",
      t3: "Address",
      textColor: Colors.black,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Container(
          width: 230,
          child: StudentDrawer(
              //sourceIndex: 5,
              )),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // color: Colors.blue[100],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                      text: "Hi ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: "Student",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    child: Image.asset("assets/images/hi.png"),
                                    //color: Colors.yellow,
                                    height: 25.0,
                                    width: 25.0,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Find your favourite tutor",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Builder(
                        builder: (context) => IconButton(
                          icon: new Icon(Icons.menu),
                          onPressed: () => Scaffold.of(context).openEndDrawer(),
                        ),
                      ),
                    ],
                  ),
                  // color: Colors.pink[50],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          right: 10,
                          left: 10,
                        ),
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Search for tutor...",
                              suffixIcon: Icon(
                                Icons.mic,
                                color: Colors.red,
                              ),
                              prefixIcon: Icon(Icons.search),
                            ),
                          ),
                          height: size.height * 0.045,
                          width: size.width - 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //  color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 10.0),
                                  child: Container(
                                    //    color: Colors.white,
                                    height: 60.0,
                                    width: 180.0,
                                    child: RichText(
                                      text: TextSpan(
                                          text: "Here you can provide the ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: "Introduction ",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white)),
                                            TextSpan(
                                                text: "of your application.",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16))
                                          ]),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    color: Colors.red[300],
                                    child: Text(
                                      "Learn more >>",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Container(
                              child: Image.asset("assets/images/book.png"),
                              //color: Colors.pink,
                              height: size.height * 0.14,
                              width: size.width * 0.3,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,

                    borderRadius: BorderRadius.circular(20.0),
                    //color: Colors.deepPurple,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Tutor",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllTutors()));
                        },
                        child: RichText(
                          text: TextSpan(
                              text: "Show All ",
                              style: TextStyle(
                                color: Colors.green[400],
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " > ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        backgroundColor: Colors.green))
                              ]),
                        ),
                      ),
                      //Icon(Icons.arrow_back)
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                    height: size.height * 0.4,
                    child: GridView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: infos.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 3 / 4,
                        ),
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TutorDetail(infos[index])));
                                // TutorDetail(infos: infos[index])));
                              },
                              child: tutorinfo(
                                size: size,
                                InfoDetails: infos[index],
                              ),
                            ))),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

class info {
  String image;
  String colorImage;
  String t1;
  String t2;
  String t3;
  Color color1;
  Color color2;
  Color textColor;
  info({
    this.image,
    this.colorImage,
    this.t1,
    this.t2,
    this.t3,
    this.color1,
    this.color2,
    this.textColor,
  });
}

class tutorinfo extends StatelessWidget {
  const tutorinfo({
    Key key,
    @required this.size,
    this.InfoDetails,
  }) : super(key: key);

  final Size size;
  final info InfoDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
            child: Image.asset(
              "assets/images/mainred.png",
              height: 60,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  InfoDetails.colorImage,
                  fit: BoxFit.cover,
                ),
              ),
              height: size.width * 0.159,
              width: size.width * 0.159,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(20)),
                // color: Colors.black,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: InfoDetails.textColor,
                        radius: size.width * 0.085,
                        child: CircleAvatar(
                          radius: size.width * 0.08,
                          backgroundImage: AssetImage(InfoDetails.image),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            InfoDetails.t1,
                            style: TextStyle(
                                color: InfoDetails.textColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            InfoDetails.t2,
                            style: TextStyle(
                                color: InfoDetails.textColor, fontSize: 12),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            InfoDetails.t3,
                            style: TextStyle(
                                color: InfoDetails.textColor, fontSize: 12),
                          ),
                        ],
                      ),
                      height: size.width * 0.22,
                      width: size.width * 0.35,
                      //   color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )
      //Image.asset(name)
      ,
      width: size.width * 0.40,
      height: size.height * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(colors: [
            InfoDetails.color1,
            InfoDetails.color2,
            // Color.fromRGBO(r, g, b, opacity)
          ])),
    );
  }
}
