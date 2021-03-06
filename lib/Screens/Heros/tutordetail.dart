import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class TutorDetail extends StatefulWidget {
  var data;

  TutorDetail(this.data);

  @override
  _TutorDetailState createState() => _TutorDetailState();
  //_TutorDetailState createState() => _TutorDetailState(infosDetail);
}

class _TutorDetailState extends State<TutorDetail> {
  // info infosDetail;
  // _TutorDetailState(this.infosDetail);
  int selectedTab = 1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Container(
              height: size.height * 0.575,
              // color: Colors.deepOrange,
              child: Stack(
                children: [
                  Container(
                      height: size.height * 0.45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: CircleAvatar(
                              radius: size.width * 0.20,
                              backgroundColor: kPrimaryLightColor,
                              child: CircleAvatar(
                                radius: size.width * 0.19,
                                backgroundImage: AssetImage(
                                  widget.data.image,
                                ),
                              ),
                            ),
                          )
                        ],
                      )),
                  Image.asset(
                    "assets/images/main_top.png",
                    height: 80.0,
                    width: 70.0,
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.chevron_left,
                        size: 60,
                        color: kPrimaryLightColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Icon(
                      Icons.linear_scale,
                      size: 40,
                      color: kPrimaryLightColor,
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.28,
                    //top: size.height * 0.30,
                    right: size.width * 0.06,
                    child: Container(
                      width: size.width * 0.88,
                      height: size.height * 0.295,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Tutor Name",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "Tutor Address",
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 17),
                            ),
                            Text(
                              "## Followers",
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 16),
                            ),
                            Container(
                              // color: Colors.red,
                              width: double.infinity,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.event_available_outlined,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Hire Tutor",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18),
                                          )
                                        ],
                                      ),
                                      height: 50.0,
                                      width: size.width * 0.58,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //     top: 0,
                  //     right: 0,
                  //     child: Container(
                  //       color: Colors.black,
                  //       width: double.infinity,
                  //       height: 60,
                  //       child: Image.asset("assets/images/tutor0.PNG"),
                  //     ))
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    print("experience");
                    setState(() {
                      selectedTab = 1;
                    });
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Experience",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: selectedTab == 1
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                    height: 50,
                    width: size.width * 0.45,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: kPrimaryColor,
                      width: selectedTab == 1 ? 5 : 2,
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // SelectedTab = false;
                    print("review");
                    setState(() {
                      selectedTab = 2;
                    });
                  },
                  child: Container(
                      child: Center(
                        child: Text(
                          "Reviews(XX)",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: selectedTab == 2
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      height: 50,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: selectedTab == 2 ? 5 : 2,
                        ),
                      )),
                )
              ],
            ),

            //TutorExperience(),
            ////////////////////////////////////////////////////////////////////

            //

            //
            //
            //
            //
            // ReviewTab(size: size),
            //ExperienceTab(size: size),
            selectedTab == 2
                ? ReviewTab(size: size)
                : ExperienceTab(size: size),
          ],
        )),
      ),
    );
  }
}

class ExperienceTab extends StatelessWidget {
  const ExperienceTab({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      //    color: kPrimaryLightColor,
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, position) {
            return TutorExperience();
          }),
    );
  }
}

class ReviewTab extends StatelessWidget {
  const ReviewTab({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Colors.grey[400]))),
          height: 70,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    child: Text(
                      "Overall Rating",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, top: 6),
                    child: Row(
                      children: [
                        Text("2.0",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.deepPurple[400],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.deepPurple[400],
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          height: size.height * 0.4,
          //    color: kPrimaryLightColor,
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, position) {
                return Reviews();
              }),
        )
        //Reviews(),
      ],
    );
  }
}

class Reviews extends StatelessWidget {
  const Reviews({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.red,
        child: Padding(
      padding: const EdgeInsets.only(top: 20),
      // padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 9),
            child: Container(
                child: ClipRRect(
                  child: Image.asset(
                    "assets/images/student.PNG",
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(13),
                ),
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(12),
                )),
          ),
          Container(
            //color: Colors.blue,
            height: 85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name of Student",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.deepPurple[400],
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.deepPurple[400],
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.deepPurple[400],
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Container(
                  width: 250,
                  child: Text(
                    "The lecturer's teaching is well organized and presented, which helped me to accept the new knowledge quickly.",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class TutorExperience extends StatelessWidget {
  const TutorExperience({
    Key key,
    @required this.TutorInfoDetails,
  }) : super(key: key);

  final Tutorinfo TutorInfoDetails;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[50],
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 25, left: 25),
          //padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: kPrimaryColor,
                radius: 8,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/course.PNG",
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              Container(
                height: 65,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tution at (Place)",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "Tution of (Subject)",
                      style: TextStyle(color: Colors.grey[800], fontSize: 16),
                    ),
                    Text(
                      "Tution Experiene (Time)",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class Tutorinfo {
  String image;

  Tutorinfo({
    this.image,
  });
}
