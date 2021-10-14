import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DashBoard extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String collage;
  final String phone;

  const DashBoard(
      {required this.collage,
      required this.phone,
      required this.firstName,
      required this.lastName});

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  static const gcolor = Color(0xFF38E486);
  static const pad = EdgeInsets.only(bottom: 46.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: gcolor,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[300],
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white10,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.bottomCenter)),
                  height: 160,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: 160,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "${widget.firstName}${widget.lastName} ",
                                style: TextStyle(color: gcolor, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${widget.phone}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${widget.collage}",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: 110,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: 30,
                              // ignore: prefer_const_constructors
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: const LinearGradient(
                                      colors: [
                                        Colors.blueAccent,
                                        Colors.greenAccent
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight)),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white10,
                        ],
                        begin: Alignment.bottomRight,
                        end: Alignment.bottomLeft)),
                height: 500,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Padding(
                            padding: pad,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFCBDFD9),
                              ),
                              height: 100,
                              width: 100,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 11.0, right: 20),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.help_outline,
                                        size: 60,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Help",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: pad,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFCBDFD9),
                              ),
                              height: 100,
                              width: 100,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 11.0, right: 20),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.leaderboard_rounded,
                                        size: 60,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        showAlertDialog(context);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Rank",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: pad,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFCBDFD9),
                              ),
                              height: 100,
                              width: 100,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 11.0, right: 20),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.settings_accessibility,
                                        size: 60,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        showAlertDialog(context);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Games",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Column(
                      children: [
                        SizedBox(height: 15),
                        Padding(
                          padding: pad,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFCBDFD9),
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 11.0, right: 20),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.request_quote_outlined,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      showAlertDialog(context);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("DOC",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: pad,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFCBDFD9),
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 11.0, right: 20),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.travel_explore,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      showAlertDialog(context);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Explore",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: pad,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFCBDFD9),
                            ),
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 11.0, right: 20),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.book,
                                      size: 60,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      showAlertDialog(context);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Book",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) async {
    // set up the button
    Widget okButton = Lottie.asset(
      'anim/ainma.json',
      repeat: false,
      reverse: false,
      animate: false,
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return okButton;
      },
    );
  }
}
