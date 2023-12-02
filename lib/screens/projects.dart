import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/skill.dart';
import 'package:portfolio/screens/webview.dart';

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
            Container(
              height: MediaQuery.sizeOf(context).height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/appicon.png",
                    height: MediaQuery.sizeOf(context).height * 0.07,
                    width: MediaQuery.sizeOf(context).width * 0.1,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Portfolio",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.w700,
                            fontSize: 30),
                      )),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                  ),
                  DropdownButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow,
                    ),
                    menuMaxHeight: MediaQuery.sizeOf(context).height * 0.2,
                    dropdownColor: Colors.transparent,
                    underline: SizedBox(),
                    items: [
                      DropdownMenuItem(
                        onTap: () {},
                        child: Text(
                          "Multi page    >",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "one page",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 1,
                      ),
                    ],
                    hint: Text(
                      "Home",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.01,
                  ),
                  TextButton(
                    onHover: (value) {
                      ishover = value;
                      istexthover = value;
                      setState(() {});
                    },
                    onPressed: () {},
                    child: Text(
                      "About",
                      style: TextStyle(
                          color: istexthover ? Colors.yellow : Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.01,
                  ),
                  DropdownButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow,
                    ),
                    dropdownColor: Colors.transparent,
                    menuMaxHeight: MediaQuery.sizeOf(context).height * 0.2,
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "Service one",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Service Two",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        enabled: true,
                        child: Text(
                          "Service Three",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 2,
                      )
                    ],
                    hint: Text(
                      "Services",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    focusColor: Colors.transparent,
                    onChanged: (value) {},
                    underline: SizedBox(),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.02,
                  ),
                  DropdownButton(
                    underline: SizedBox(),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow,
                    ),
                    isDense: true,
                    menuMaxHeight: MediaQuery.sizeOf(context).height * 0.2,
                    dropdownColor: Colors.transparent,
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "Protfolio 1",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Portfolio 2",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Portfolio 3",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Portfolio 4",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 3,
                      )
                    ],
                    hint: Text(
                      "Portfolio",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  DropdownButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow,
                    ),
                    underline: SizedBox(),
                    menuMaxHeight: MediaQuery.sizeOf(context).height * 0.2,
                    dropdownColor: Colors.transparent,
                    items: [
                      DropdownMenuItem(
                        onTap: () {},
                        child: Text(
                          "Blog Standard",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 0,
                      ),
                      DropdownMenuItem(
                        child: Text(
                          "Blog Details",
                          style: TextStyle(color: Colors.yellow),
                        ),
                        value: 1,
                      ),
                    ],
                    hint: Text(
                      "Blog",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    onChanged: (value) {},
                    //   value: dropdown,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.02,
                  ),
                  TextButton(
                      onPressed: () {},
                      onHover: (value) {
                        ishover = value;
                        istexthover = value;
                        setState(() {});
                      },
                      child: Text(
                        "Contact",
                        style: TextStyle(
                            color: istexthover ? Colors.yellow : Colors.white),
                      )),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.1,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Let's Talk",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  InkWell(
                    onTap: () => Talk(),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffC9F31D),
                      child: Icon(Icons.menu, color: Colors.black, size: 30),
                    ),
                  )
                ],
              ),
            ),
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
                    onHover: (value) {
                      ishover = value;
                      if (ishover = value) {
                        elevetion = 5;
                      }
                      setState(() {});
                    },
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
                         ),
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Center(
                              child: Image.asset("assets/images/salad2.png",
                                  fit: BoxFit.cover)),
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
                                  backgroundColor: ishover
                                      ? Colors.yellow
                                      : Colors.transparent),
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
                    hoverColor: Colors.yellow,
                    highlightColor: Colors.red,
                    onTap: () {},
                    onHover: (value) {
                      ishover = value;
                      setState(() {});
                    },
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
                    onHover: (value) {
                      ishover = value;
                      setState(() {});
                    },
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 2,
                              color: ishover
                                  ? Colors.yellow
                                  : Colors.transparent)),
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
                    onHover: (value) {
                      ishover = value;
                      setState(() {});
                    },
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 2,
                              color: ishover
                                  ? Colors.yellow
                                  : Colors.transparent)),
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
                    onHover: (value) {
                      ishover = value;
                      setState(() {});
                    },
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: MediaQuery.sizeOf(context).height * 0.1,
                      width: MediaQuery.sizeOf(context).width * 0.5,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              width: 2,
                          ),),
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
