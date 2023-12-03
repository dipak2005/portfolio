import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/drawer/talk.dart';
import 'package:portfolio/widgets/Tabletcontainer.dart';
import 'package:portfolio/widgets/container.dart';

import '../variables/hover.dart';

class Tablet extends StatefulWidget {
  const Tablet({super.key});

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff131313),
      appBar: AppBar(
          backgroundColor: const Color(0xff262626),
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
                    const TextSpan(
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
                        const MaterialStatePropertyAll(Color(0xff82B440)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
                onPressed: () {},
                child: const Text(
                  "Buy Now",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TabletContainer(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 1.3,
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Color(0xff131313)),
                        height: MediaQuery.sizeOf(context).height * 0.7,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 20,
                            ),
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
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.1,
                                  ),
                                  Text(
                                    "We denouce  with righteous indignation dislike demoralized by\n the charms  of pleasure",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.01,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              backgroundColor:
                                                  MaterialStatePropertyAll(hire
                                                      ? Colors.black
                                                      : Colors.yellow)),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, "Contact");
                                          },
                                          onHover: (value) {
                                            hire = value;

                                            setState(() {});
                                          },
                                          child: Text(
                                            "Hire Me",
                                            style: TextStyle(
                                                color: hire
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                      TextButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              "Download Resume",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15),
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
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.2,
                            ),
                            Container(
                              height: MediaQuery.sizeOf(context).height * 0.6,
                              width: MediaQuery.sizeOf(context).width * 0.3,
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
                    ],
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 200,
                          backgroundColor: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height * 1.4,
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                children: [
                  Row(
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
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.02,
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
                              width: MediaQuery.sizeOf(context).width * 0.55,
                              decoration: BoxDecoration(
                                color: Color(0xff1F1F1F),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.02,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Expanded(child: Talk()),
    );
  }
}
