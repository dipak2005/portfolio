import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/drawer/talk.dart';
import 'dart:ui_web';

import 'package:portfolio/variables/hover.dart';

import '../widgets/container.dart';

class Webview extends StatefulWidget {
  const Webview({super.key});

  @override
  State<Webview> createState() => _WebviewState();
}

bool ishover = false;
bool istexthover = false;

class _WebviewState extends State<Webview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
      appBar: AppBar(
          backgroundColor: Color(0xff262626),
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
              height: MediaQuery.sizeOf(context).height * 0.18,
            ),
            Container(
              decoration: BoxDecoration(color: Color(0xff131313)),
              height: MediaQuery.sizeOf(context).height * 0.7,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment(-0.8, 0),
                    child: Column(
                      children: [
                        Text(
                          "Hello , i'm",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 40,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Dipak  Thakur",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 50,
                            color: Colors.yellow,
                          ),
                        ),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                        ),
                        Text(
                          "We denouce  with righteous indignation dislike demoralized by\n the charms  of pleasure",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.grey),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.01,
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    backgroundColor: MaterialStatePropertyAll(
                                        hire ? Colors.black : Colors.yellow)),
                                onPressed: () {
                                  Navigator.pushNamed(context, "Contact");
                                },
                                onHover: (value) {
                                  hire = value;

                                  setState(() {});
                                },
                                child: Text(
                                  "Hire Me",
                                  style: TextStyle(
                                      color:
                                          hire ? Colors.white : Colors.black),
                                )),
                            TextButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Text(
                                    "Download Resume",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 300,
                          backgroundColor: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.1,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Trained\n Fresher",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 50,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Years of Experience",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "7+",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w700,
                              fontSize: 50),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Project Complete",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "99%",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 50,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Client Satisfaction",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.7,
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // verticalDirection: VerticalDirection.up,
                children: [
                  Align(
                    alignment: Alignment(-0.8, 0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.12,
                        ),
                        Text(
                          "About Me",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Professional",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700),
                              ),
                              TextSpan(
                                text: " Problem Solutions",
                                style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 40),
                              ),
                              TextSpan(
                                  text: "\nFor Digitals Products",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "At vero eos et accusamus etodio dignissimos ducimus praesentium voluptatum\n corrupti quos dolores quas molestias excepturi sint occaecati cupiditate provident\n qui officia deserunt mollitia animi, id est laborum et dolorum",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.03,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.done,
                              size: 30,
                              color: Colors.yellow,
                            ),
                            Text(
                              "    Branding and Design",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.done,
                              size: 30,
                              color: Colors.yellow,
                            ),
                            Text(
                              "    Game Development",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.done,
                              size: 30,
                              color: Colors.yellow,
                            ),
                            Text(
                              "    App Development",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.02,
                            ),
                            Icon(
                              Icons.done,
                              size: 30,
                              color: Colors.yellow,
                            ),
                            Text(
                              "    web Development",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.04,
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.35,
                          decoration: BoxDecoration(
                            color: Color(0xff1F1F1F),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.02,
                              ),
                              CircleAvatar(
                                child: Icon(
                                  Icons.mail_outline,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                backgroundColor: Colors.yellow,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "    Email Us",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "  Support@gmail.com",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                              CircleAvatar(
                                child: Icon(
                                  Icons.call,
                                  color: Colors.black,
                                  size: 20,
                                ),
                                backgroundColor: Colors.yellow,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "    Contact Us",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "  +91 2345600000",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 17,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.02,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 1.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 150,
                        backgroundColor: Color(0xff1F1F1F),
                        backgroundImage: AssetImage(
                          "assets/images/appicon.png",
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "My Resume",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                // TextSpan(
                                //   text: "Real",
                                //   style: TextStyle(
                                //       color: Colors.white,
                                //       fontWeight: FontWeight.w700,
                                //       fontSize: 35),
                                // ),
                                TextSpan(
                                    text: " Fresher",
                                    style: TextStyle(
                                        color: Colors.yellow,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Flutter Developer",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 35),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: MediaQuery.sizeOf(context).height * 0.4,
                            width: MediaQuery.sizeOf(context).width * 0.5,
                            decoration: BoxDecoration(
                              color: Color(0xff1F1F1F),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(children: [
                                      InkWell(
                                        onTap: () {},
                                        onHover: (value) {
                                          xarrow = value;
                                          setState(() {});
                                        },
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: xarrow
                                              ? Colors.yellow
                                              : Colors.black,
                                          child: Icon(
                                              Icons.arrow_forward_outlined,
                                              color: xarrow
                                                  ? Colors.black
                                                  : Colors.white),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "2024- Present",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "              Flutter Developer",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20,
                                                letterSpacing: 1),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "X-Company",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          onHover: (value) {
                                            xarrow1 = value;
                                            setState(() {});
                                          },
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: xarrow1
                                                ? Colors.yellow
                                                : Colors.black,
                                            child: Icon(
                                                Icons.arrow_forward_outlined,
                                                color: xarrow1
                                                    ? Colors.black
                                                    : Colors.white),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "2024- Present",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "              Flutter Developer",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  letterSpacing: 1),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "X-Company",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.04,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(children: [
                                      InkWell(
                                        onTap: () {},
                                        onHover: (value) {
                                          xarrow2 = value;
                                          setState(() {});
                                        },
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: xarrow2
                                              ? Colors.yellow
                                              : Colors.black,
                                          child: Icon(
                                              Icons.arrow_forward_outlined,
                                              color: xarrow2
                                                  ? Colors.black
                                                  : Colors.white),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "2024- Present",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "              Flutter Developer",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20,
                                                letterSpacing: 1),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "X-Company",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ]),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          onHover: (value) {
                                            xarrow3 = value;
                                            setState(() {});
                                          },
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: xarrow3
                                                ? Colors.yellow
                                                : Colors.black,
                                            child: Icon(
                                                Icons.arrow_forward_outlined,
                                                color: xarrow3
                                                    ? Colors.black
                                                    : Colors.white),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "2024- Present",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "              Flutter Developer",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  letterSpacing: 1),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              "X-Company",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                  ),
                  Text(
                    "Popular Services",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "My",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: "  Special Service",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: "  For Your",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 35,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "App",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: "  Development",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          arow1 = value;
                          setState(() {});
                        },
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.15,
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          decoration: BoxDecoration(
                            color: Color(0xff1F1F1F),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color:
                                    arow1 ? Colors.yellow : Colors.transparent),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "01         App Development",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "         Faster Faster Flutter Master",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_circle_right_sharp,
                                    color: arow1 ? Colors.yellow : Colors.black,
                                    size: 35,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.03,
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          arow2 = value;
                          setState(() {});
                        },
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.15,
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          decoration: BoxDecoration(
                            color: Color(0xff1F1F1F),
                            border: Border.all(
                                color:
                                    arow2 ? Colors.yellow : Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "02       Web Development",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "         Faster Faster Flutter Master",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_circle_right_sharp,
                                    color: arow2 ? Colors.yellow : Colors.black,
                                    size: 35,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          arow3 = value;
                          setState(() {});
                        },
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.15,
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          decoration: BoxDecoration(
                            color: Color(0xff1F1F1F),
                            border: Border.all(
                                color:
                                    arow3 ? Colors.yellow : Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "03         Game Development",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "         Faster Faster Flutter Master",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_circle_right_sharp,
                                    color: arow3 ? Colors.yellow : Colors.black,
                                    size: 35,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.03,
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          arow4 = value;
                          setState(() {});
                        },
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.15,
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          decoration: BoxDecoration(
                            color: Color(0xff1F1F1F),
                            border: Border.all(
                                color:
                                    arow4 ? Colors.yellow : Colors.transparent),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "04         Figma Development",
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "         Faster Faster Flutter Master",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_circle_right_sharp,
                                    color: arow4 ? Colors.yellow : Colors.black,
                                    size: 35,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // Row(
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: [
                  //     Container(
                  //       height: MediaQuery.sizeOf(context).height * 0.15,
                  //       width: MediaQuery.sizeOf(context).width * 0.4,
                  //       decoration: BoxDecoration(
                  //         color: Color(0xff1F1F1F),
                  //         borderRadius: BorderRadius.circular(15),
                  //       ),
                  //       child: Row(
                  //         mainAxisSize: MainAxisSize.min,
                  //         // crossAxisAlignment: CrossAxisAlignment.center,
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Column(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             mainAxisSize: MainAxisSize.min,
                  //             children: [
                  //               Text(
                  //                 "05         C++ Development",
                  //                 style: TextStyle(
                  //                     fontSize: 30,
                  //                     color: Colors.white,
                  //                     fontWeight: FontWeight.w700),
                  //               ),
                  //               SizedBox(
                  //                 height: 20,
                  //               ),
                  //               Text(
                  //                 "         Faster Faster Flutter Master",
                  //                 style: TextStyle(
                  //                     fontWeight: FontWeight.w700,
                  //                     color: Colors.grey),
                  //               )
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             width: MediaQuery.sizeOf(context).width * 0.1,
                  //           ),
                  //           IconButton(
                  //               onPressed: () {},
                  //               icon: Icon(
                  //                 Icons.arrow_circle_right_sharp,
                  //                 color: Colors.black,
                  //                 size: 35,
                  //               ))
                  //         ],
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: MediaQuery.sizeOf(context).width * 0.03,
                  //     ),
                  //     Container(
                  //       height: MediaQuery.sizeOf(context).height * 0.15,
                  //       width: MediaQuery.sizeOf(context).width * 0.4,
                  //       decoration: BoxDecoration(
                  //         color: Color(0xff1F1F1F),
                  //         borderRadius: BorderRadius.circular(15),
                  //       ),
                  //       child: Row(
                  //         mainAxisSize: MainAxisSize.min,
                  //         // crossAxisAlignment: CrossAxisAlignment.center,
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           Column(
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             mainAxisSize: MainAxisSize.min,
                  //             children: [
                  //               Text(
                  //                 "06         Python Development",
                  //                 style: TextStyle(
                  //                     fontSize: 30,
                  //                     color: Colors.white,
                  //                     fontWeight: FontWeight.w700),
                  //               ),
                  //               SizedBox(
                  //                 height: 20,
                  //               ),
                  //               Text(
                  //                 "         Faster Faster Flutter Master",
                  //                 style: TextStyle(
                  //                     fontWeight: FontWeight.w700,
                  //                     color: Colors.grey),
                  //               )
                  //             ],
                  //           ),
                  //           SizedBox(
                  //             width: MediaQuery.sizeOf(context).width * 0.1,
                  //           ),
                  //           IconButton(
                  //               onPressed: () {},
                  //               icon: Icon(
                  //                 Icons.arrow_circle_right_sharp,
                  //                 color: Colors.black,
                  //                 size: 35,
                  //               ))
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 1.1,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xff070707),
                Color(0xff080807),
                Color(0xff101208),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "My Skills",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Let's Explore",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 35),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Skills & Explore",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                                color: Colors.yellow),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Sed ut perspiciatis unde omnis iste natus to voluptatem \n\n accusantium doloremque laudantium, totam rem aperiamc\n\n eaque ipsa quae ab illo inventore veritati",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          ElevatedButton(
                            onHover: (value) {
                              home = value;
                              setState(() {});
                            },
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                backgroundColor: MaterialStatePropertyAll(
                                    home ? Colors.black : Colors.yellow),
                                fixedSize:
                                    MaterialStatePropertyAll(Size(200, 50))),
                            onPressed: () {
                              Navigator.pushNamed(context, "Skill");
                            },
                            child: Text(
                              "Learn More      >",
                              style: TextStyle(
                                  color: home ? Colors.white : Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.07,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, "Skill"),
                        onHover: (value) {
                          ishover = value;
                          setState(() {});
                        },
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          width: MediaQuery.sizeOf(context).width * 0.12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: ishover
                                    ? Colors.yellow
                                    : Colors.transparent),
                            color: Color(0xff1F1F1F),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/images/figma.png",
                                height: 100,
                                width: 50,
                              ),
                              // SizedBox(height: 10,),
                              Text(
                                "Figma",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                onHover: (value) {
                                  ishover = value;
                                  setState(() {});
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      ishover ? Colors.yellow : Colors.black),
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(150, 50)),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "Skill");
                                },
                                child: Text(
                                  "95%",
                                  style: TextStyle(
                                      color:
                                          ishover ? Colors.black : Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.01,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, "Skill"),
                        onHover: (value) {
                          flutter = value;
                          setState(() {});
                        },
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          width: MediaQuery.sizeOf(context).width * 0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: flutter
                                      ? Colors.yellow
                                      : Colors.transparent),
                              color: Color(0xff1F1F1F)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/images/appicon.png",
                                height: 100,
                                width: 50,
                              ),
                              // SizedBox(height: 10,),
                              Text(
                                "Flutter",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                onHover: (value) {
                                  flutter = value;
                                  setState(() {});
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      flutter ? Colors.yellow : Colors.black),
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(150, 50)),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "Skill");
                                },
                                child: Text(
                                  "99%",
                                  style: TextStyle(
                                      color:
                                          flutter ? Colors.black : Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.01,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, "Skill"),
                        onHover: (value) {
                          flow = value;
                          setState(() {});
                        },
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          width: MediaQuery.sizeOf(context).width * 0.12,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: flow
                                      ? Colors.yellow
                                      : Colors.transparent),
                              color: Color(0xff1F1F1F)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/images/flow.png",
                                height: 100,
                                width: 50,
                              ),
                              // SizedBox(height: 10,),
                              Text(
                                "Flutter Flow",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                onHover: (value) {
                                  flow = value;
                                  setState(() {});
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      flow ? Colors.yellow : Colors.black),
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(150, 50)),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "Skill");
                                },
                                child: Text(
                                  "95%",
                                  style: TextStyle(
                                      color: flow ? Colors.black : Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.01,
                      ),
                      InkWell(
                        onTap: () => Navigator.pushNamed(context, "Skill"),
                        onHover: (value) {
                          php = value;
                          setState(() {});
                        },
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.3,
                          width: MediaQuery.sizeOf(context).width * 0.12,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    php ? Colors.yellow : Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff1F1F1F),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                "assets/images/php.png",
                                height: 100,
                                width: 50,
                              ),
                              // SizedBox(height: 10,),
                              Text(
                                "PhP",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                onHover: (value) {
                                  php = value;
                                  setState(() {});
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      php ? Colors.yellow : Colors.black),
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(150, 50)),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "Skill");
                                },
                                child: Text(
                                  "95%",
                                  style: TextStyle(
                                      color: php ? Colors.black : Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment(0.63, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, "Skill"),
                          onHover: (value) {
                            wordpress = value;
                            setState(() {});
                          },
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.3,
                            width: MediaQuery.sizeOf(context).width * 0.12,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: wordpress
                                        ? Colors.yellow
                                        : Colors.transparent),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff1F1F1F)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/w.png",
                                  height: 100,
                                  width: 50,
                                ),
                                // SizedBox(height: 10,),
                                Text(
                                  "Wordpress",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                ElevatedButton(
                                  onHover: (value) {
                                    wordpress = value;
                                    setState(() {});
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        wordpress
                                            ? Colors.yellow
                                            : Colors.black),
                                    fixedSize:
                                        MaterialStatePropertyAll(Size(150, 50)),
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "Skill");
                                  },
                                  child: Text(
                                    "80%",
                                    style: TextStyle(
                                        color: wordpress
                                            ? Colors.black
                                            : Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.01,
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, "Skill"),
                          onHover: (value) {
                            c = value;
                            setState(() {});
                          },
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.3,
                            width: MediaQuery.sizeOf(context).width * 0.12,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        c ? Colors.yellow : Colors.transparent),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff1F1F1F)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/c.png",
                                  height: 100,
                                  width: 50,
                                ),
                                // SizedBox(height: 10,),
                                Text(
                                  "c Programing",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                ElevatedButton(
                                  onHover: (value) {
                                    c = value;
                                    setState(() {});
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        c ? Colors.yellow : Colors.black),
                                    fixedSize:
                                        MaterialStatePropertyAll(Size(150, 50)),
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "Skill");
                                  },
                                  child: Text(
                                    "95%",
                                    style: TextStyle(
                                        color: c ? Colors.black : Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.01,
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, "Skill"),
                          onHover: (value) {
                            cpp = value;
                            setState(() {});
                          },
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.3,
                            width: MediaQuery.sizeOf(context).width * 0.12,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: cpp
                                        ? Colors.yellow
                                        : Colors.transparent),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff1F1F1F)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/cpp.png",
                                  height: 100,
                                  width: 50,
                                ),
                                // SizedBox(height: 10,),
                                Text(
                                  "c++",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                ElevatedButton(
                                  onHover: (value) {
                                    cpp = value;
                                    setState(() {});
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        cpp ? Colors.yellow : Colors.black),
                                    fixedSize:
                                        MaterialStatePropertyAll(Size(150, 50)),
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "Skill");
                                  },
                                  child: Text(
                                    "95%",
                                    style: TextStyle(
                                        color:
                                            cpp ? Colors.black : Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.01,
                        ),
                        InkWell(
                          onTap: () => Navigator.pushNamed(context, "Skill"),
                          onHover: (value) {
                            ps = value;
                            setState(() {});
                          },
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.3,
                            width: MediaQuery.sizeOf(context).width * 0.12,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: ps
                                        ? Colors.yellow
                                        : Colors.transparent),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff1F1F1F)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/ps.png",
                                  height: 100,
                                  width: 50,
                                ),
                                // SizedBox(height: 10,),
                                Text(
                                  "Photoshop",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                ElevatedButton(
                                  onHover: (value) {
                                    ps = value;
                                    setState(() {});
                                  },
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        ps ? Colors.yellow : Colors.black),
                                    fixedSize:
                                        MaterialStatePropertyAll(Size(150, 50)),
                                    shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "Skill");
                                  },
                                  child: Text(
                                    "90%",
                                    style: TextStyle(
                                        color: ps ? Colors.black : Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 3.1,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Latest Works",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Explore My Popular",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: " Projects",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w700,
                              fontSize: 35),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.6,
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Image.asset("assets/images/n1.png",
                            fit: BoxFit.fitHeight),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "App Development",
                            style: TextStyle(
                                color: Colors.yellow, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nike Ecommerce App",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 35),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            " Nike   Just Do It",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                              hoverColor: Colors.yellow,
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  "Projects",
                                );
                              },
                              icon: Icon(
                                Icons.arrow_circle_right_sharp,
                                color: narro ? Colors.yellow : Colors.black,
                                size: 35,
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "App Development",
                            style: TextStyle(
                                color: Colors.yellow, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Food Mart",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 35),
                          ),
                          Text(
                            "Oline food Delivery",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 35),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Sed ut perspiciatis unde omnin natus totam rem aperiam\n eaque inventore veritatis...",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                              hoverColor: Colors.yellow,
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_circle_right_sharp,
                                color: farro ? Colors.yellow : Colors.black,
                                size: 35,
                              ))
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.6,
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Image.asset("assets/images/app.png",
                            fit: BoxFit.fitHeight),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.6,
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Image.asset(
                          "assets/images/eco.png",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "App Development",
                            style: TextStyle(
                                color: Colors.yellow, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "E-Mart",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 35),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "So Let's Go And Shop Now",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                              hoverColor: Colors.yellow,
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_circle_right_sharp,
                                color: earro ? Colors.yellow : Colors.black,
                                size: 35,
                              )),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "App Development",
                            style: TextStyle(
                                color: Colors.yellow, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Resume Builder",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 35),
                          ),
                          Text(
                            "For more Peoples",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 35),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Sed ut perspiciatis unde omnin natus totam rem aperiam\n eaque inventore veritatis...",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                              hoverColor: Colors.yellow,
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_circle_right_sharp,
                                color: rarro ? Colors.yellow : Colors.black,
                                size: 35,
                              ))
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.6,
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Image.asset(
                          "assets/images/r.png",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onHover: (value) {
                      view = value;
                      setState(() {});
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          view ? Colors.black : Colors.yellow),
                      fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "Projects");
                    },
                    child: Text(
                      "View More Projects   >",
                      style:
                          TextStyle(color: view ? Colors.white : Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.8,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Clients Testimonials",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "I've 1500+ Clients",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Feedback",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Sed ut perspiciatis unde omnin natus total\n\n rem aperiam eaque inventore veritatis",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_circle_left_sharp,
                                color: Color(0xff1F1F1F),
                                size: 50,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_circle_right_sharp,
                                color: Color(0xff1F1F1F),
                                size: 50,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.03,
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.7,
                      width: MediaQuery.sizeOf(context).width * 0.3,
                      decoration: BoxDecoration(
                        color: Color(0xff131313),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 60,
                              ),
                              Positioned(
                                top: 0,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_circle_right_sharp,
                                      color: Colors.yellow),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Nice",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.7,
                      width: MediaQuery.sizeOf(context).width * 0.3,
                      decoration: BoxDecoration(
                        color: Color(0xff131313),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 60,
                              ),
                              Positioned(
                                top: 0,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_circle_right_sharp,
                                      color: Colors.yellow),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Nice",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
        drawer: Talk(),
    );
  }
}
