import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/web/skill.dart';
import 'package:portfolio/web/webview.dart';
import 'package:portfolio/variables/hover.dart';
import 'package:portfolio/widgets/container.dart';
import 'dart:ui_web';
import '../drawer/talk.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
      appBar: AppBar(
          backgroundColor: Color(0xff262626),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
          title: Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Flutter",
                      style: GoogleFonts.alike(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    TextSpan(
                      text: " Developer",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff82B440)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
                onPressed: () {},
                child: Text(
                  "Buy Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Commencontainer(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.9,
              width: MediaQuery.sizeOf(context).width * 0.85,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                children: [
                  InkWell(
                    highlightColor: Colors.yellow,
                    hoverColor: Colors.yellow,
                    autofocus: true,
                    canRequestFocus: true,
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Center(
                              child: Image.asset("assets/images/o1.png",
                                  fit: BoxFit.cover)),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(
                              " Nike Mart ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 35,
                                letterSpacing: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    highlightColor: Colors.yellow,
                    hoverColor: Colors.yellow,
                    autofocus: true,
                    canRequestFocus: true,
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    onTap: () {},
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Center(
                              child: Image.asset("assets/images/salad2.png",
                                  fit: BoxFit.cover,isAntiAlias: true),),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(
                              " Food Mart ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 35,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    highlightColor: Colors.yellow,
                    hoverColor: Colors.yellow,
                    autofocus: true,
                    canRequestFocus: true,
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Center(
                              child: Image.asset("assets/images/ec.png",
                                  fit: BoxFit.cover)),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(
                              " E-Mart ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 35,
                                letterSpacing: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    hoverColor: Colors.yellow,
                    highlightColor: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Center(
                              child: Image.asset("assets/images/res.png",
                                  fit: BoxFit.cover)),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(
                              " Resume Builder ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 35,
                                letterSpacing: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    highlightColor: Colors.yellow,
                    hoverColor: Colors.yellow,
                    autofocus: true,
                    canRequestFocus: true,
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Center(
                              child: Image.asset("assets/images/in.png",
                                  fit: BoxFit.cover)),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(
                              " Invoice Genreater ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 35,
                                letterSpacing: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    highlightColor: Colors.yellow,
                    hoverColor: Colors.yellow,
                    autofocus: true,
                    canRequestFocus: true,
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Center(
                              child: Image.asset("assets/images/watch.png",
                                  fit: BoxFit.cover)),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(
                              "Watch India",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 35,
                                letterSpacing: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    highlightColor: Colors.yellow,
                    hoverColor: Colors.yellow,
                    autofocus: true,
                    canRequestFocus: true,
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    onTap: () {},
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Center(
                              child: Image.asset("assets/images/fl.png",
                                  fit: BoxFit.fitHeight)),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(
                              " Flipweb ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 35,
                                  letterSpacing: 2,
                                  backgroundColor: ishover
                                      ? Colors.yellow
                                      : Colors.transparent),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    highlightColor: Colors.yellow,
                    hoverColor: Colors.yellow,
                    autofocus: true,
                    canRequestFocus: true,
                    customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    mouseCursor: MaterialStateMouseCursor.clickable,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Center(
                              child: Image.asset("assets/images/festival.png",
                                  fit: BoxFit.cover)),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Text(
                              " Festival Post ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 35,
                                letterSpacing: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // InkWell(
                  //   onTap: () {},
                  //   onHover: (value) {
                  //     ishover = value;
                  //     setState(() {});
                  //   },
                  //   child: Container(
                  //     height: MediaQuery.sizeOf(context).height * 0.1,
                  //     width: MediaQuery.sizeOf(context).width * 0.5,
                  //     decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(20),
                  //         border: Border.all(
                  //             width: 2,
                  //             color: ishover
                  //                 ? Colors.yellow
                  //                 : Colors.transparent)),
                  //     margin: EdgeInsets.all(10),
                  //     child: Stack(
                  //       children: [
                  //         Center(
                  //             child: Image.asset("assets/images/o1.png",
                  //                 fit: BoxFit.cover)),
                  //         Positioned(
                  //           bottom: 0,
                  //           right: 0,
                  //           child: Text(
                  //             "Nike Mart ",
                  //             style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontWeight: FontWeight.w700,
                  //                 fontSize: 35,
                  //                 letterSpacing: 2,
                  //                 backgroundColor: ishover
                  //                     ? Colors.yellow
                  //                     : Colors.transparent),
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
