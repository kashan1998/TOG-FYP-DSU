import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class TutorDetailCard extends StatefulWidget {
  @override
  _TutorDetailCardState createState() => _TutorDetailCardState();
}

class _TutorDetailCardState extends State<TutorDetailCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
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
                            backgroundImage:
                                AssetImage("assets/images/tutor0.PNG"),
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
                child: Icon(
                  Icons.chevron_left,
                  size: 60,
                  color: kPrimaryLightColor,
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
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
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
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 17),
                        ),
                        Text(
                          "## Followers",
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.event_available_outlined,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Availability",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                height: 50.0,
                                width: size.width * 0.43,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kPrimaryColor,
                                ),
                              ),
                              Container(
                                height: 50.0,
                                width: size.width * 0.13,
                                decoration: BoxDecoration(
                                    //color: Colors.red,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey[600])
                                    //color: Colors.purple,
                                    ),
                                child: IconButton(
                                    color: Colors.pink,
                                    icon: Icon(
                                      Icons.person_add_alt_1_rounded,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    onPressed: null),
                              )
                            ],
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
        Container(
          height: 2,
          color: Colors.deepPurple,
        ),
        // Container(
        //   child: DefaultTabController(
        //     length: 4,
        //     child: AppBar(
        //       bottom: new TabBar(
        //         isScrollable: true,
        //         unselectedLabelColor: Colors.grey,
        //         indicatorColor: Colors.black54,
        //         tabs: <Tab>[
        //           new Tab(
        //             text: "Featured",
        //           ),
        //           new Tab(
        //             text: "Popular",
        //           ),
        //         ],
        //         controller: _tabController,
        //       ),
        //       title: null,
        //     ),
        //   ),
        // ),

        // DefaultTabController(
        //     length: 3,
        //     child: Scaffold(
        //       appBar: AppBar(
        //         elevation: 0,
        //         bottom:
        //             TabBar(indicatorSize: TabBarIndicatorSize.label, tabs: [
        //           Tab(
        //             child: Align(
        //               alignment: Alignment.center,
        //               child: Text("APPS"),
        //             ),
        //           ),
        //           Tab(
        //             child: Align(
        //               alignment: Alignment.center,
        //               child: Text("MOVIES"),
        //             ),
        //           ),
        //           Tab(
        //             child: Align(
        //               alignment: Alignment.center,
        //               child: Text("GAMES"),
        //             ),
        //           ),
        //         ]),
        //       ),
        //       body: TabBarView(children: [
        //         Icon(Icons.apps),
        //         Icon(Icons.movie),
        //         Icon(Icons.games),
        //       ]),
        //     ))

        // Container(

        //   decoration:
        //       new BoxDecoration(color: Theme.of(context).primaryColor),
        //   child: new TabBar(
        //      controller: _controller,
        //     tabs: [
        //       new Tab(
        //         icon: const Icon(Icons.home),
        //         text: 'Address',
        //       ),
        //       new Tab(
        //         icon: const Icon(Icons.my_location),
        //         text: 'Location',
        //       ),
        //     ],
        //   ),
        // ),

        // // Column(
        //   children: [
        //     Container(
        //       height: 60,
        //       margin: EdgeInsets.only(left: 60),
        //       child: TabBar(
        //         tabs: [
        //           Container(
        //             width: 70.0,
        //             child: new Text(
        //               'Tab1',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           ),
        //           Container(
        //             width: 75.0,
        //             child: new Text(
        //               'Tab2',
        //               style: TextStyle(fontSize: 20),
        //             ),
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // ),
      ],
    );
  }
}
