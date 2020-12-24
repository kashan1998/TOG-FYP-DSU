import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Heros/tutordetail.dart';
import 'package:flutter_auth/constants.dart';

class AllTutors extends StatefulWidget {
  @override
  _AllTutorsState createState() => _AllTutorsState();
}

class _AllTutorsState extends State<AllTutors> {
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
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            //   color: Colors.purple[100],
            child: Column(
              children: [
                Container(
                  height: size.height * 0.2,
                  width: double.infinity,
                  color: kPrimaryColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 10),
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
                      Center(
                        child: Text(
                          "All tutors Available near your area ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                      //   height: 400,
                      //   child: ListView.builder(
                      //       itemCount: 8,
                      //       itemBuilder: (context, position) {
                      //         return AllTutorVisible();
                      //       }),
                      height: size.height * 0.731,
                      child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: infos.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
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
                                //    TutorDetail(infos[index]
                                // )));
                                // TutorDetail(infos: infos[index])));
                              },
                              child: AllTutorVisible(
                                infoDetails: infos[index],
                              )))),
                )
                //AllTutorVisible(size: size)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AllTutorVisible extends StatelessWidget {
  const AllTutorVisible({Key key, @required this.infoDetails})
      : super(key: key);
  final info infoDetails;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Container(
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
                      infoDetails.colorImage,
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
                            backgroundColor: infoDetails.textColor,
                            radius: size.width * 0.085,
                            child: CircleAvatar(
                              radius: size.width * 0.08,
                              backgroundImage: AssetImage(infoDetails.image),
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
                                infoDetails.t1,
                                style: TextStyle(
                                    color: infoDetails.textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                infoDetails.t2,
                                style: TextStyle(
                                    color: infoDetails.textColor, fontSize: 12),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                infoDetails.t3,
                                style: TextStyle(
                                    color: infoDetails.textColor, fontSize: 12),
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
                infoDetails.color1,
                infoDetails.color2,
                // Color.fromRGBO(r, g, b, opacity)
              ])),
        ));
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
