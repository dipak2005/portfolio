import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/web/webview.dart';
import 'package:portfolio/widgets/container.dart';

import '../drawer/talk.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();
}

double elevetion = 5;

class _SkillState extends State<Skill> {
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
            Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "About Me",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                      onHover: (value) {
                        istexthover = value;
                        setState(() {});
                      },
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Portfolio   *",
                          style: TextStyle(
                              color: istexthover ? Colors.yellow : Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "About Me",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Creative ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 35),
                              ),
                              TextSpan(
                                text: " App Developer",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.yellow,
                                    fontSize: 35),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.black38,
                                  Colors.yellow
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                width: MediaQuery.sizeOf(context).width * 0.12,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
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
                                      style: ButtonStyle(
                                        elevation:
                                            MaterialStatePropertyAll(elevetion),
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                          Colors.black,
                                        ),
                                        fixedSize: MaterialStatePropertyAll(
                                            Size(150, 50)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      onHover: (value) {
                                        ishover = value;
                                        istexthover = value;
                                        if (ishover = value) {
                                          elevetion = 5;
                                        }
                                        setState(() {});
                                      },
                                      child: Text(
                                        "95%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                              ),
                              Text(
                                '''The Figma skill for Flutter empowers developers to seamlessly integrate design and\n\n development workflows, fostering collaboration between designers and developers.\n\n With this skill, Flutter developers can directly import Figma designs into their projects,\n\n ensuring pixel-perfect UI implementation. This integration streamlines the\n\n development process, allowing for real-time updates and reducing the gap between\n\n design and code.''',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.black38,
                                  Colors.yellow
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width:20,
                              ),
                              Text(
                                "The Flutter skill represents a developer's proficiency in utilizing the Flutter framework\n\n to create high-performance, natively compiled applications for mobile, web, and\n\n desktop from a single codebase. With this skill, developers can build visually appealing\n\n and responsive user interfaces, implement complex functionality, and deploy\n\n applications across multiple platforms.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.08,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                width: MediaQuery.sizeOf(context).width * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
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
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.black),
                                        fixedSize: MaterialStatePropertyAll(
                                            Size(150, 50)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "99%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.black38,
                                  Colors.yellow
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                width: MediaQuery.sizeOf(context).width * 0.12,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
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
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.black),
                                        fixedSize: MaterialStatePropertyAll(
                                            Size(150, 50)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "95%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                              ),
                              Text(
                                "The FlutterFlow skill for Flutter empowers developers with a powerful visual\n\n development platform, offering a seamless and efficient way to build beautiful,\n\n responsive Flutter applications. With FlutterFlow, developers can accelerate the app\n\n development process by leveraging a visual interface that simplifies both design and\n\n coding tasks.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.black38,
                                  Colors.yellow
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "The PHP skill for Flutter empowers developers to seamlessly incorporate server-side\n\n logic and dynamic functionalities into their Flutter applications. This integration allows\n\n Flutter developers to leverage the power of PHP, a server-side scripting language, to\n\n handle server interactions, manage databases, and execute custom business logic.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.08,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                width: MediaQuery.sizeOf(context).width * 0.12,
                                decoration: BoxDecoration(
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
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.black),
                                        fixedSize: MaterialStatePropertyAll(
                                            Size(150, 50)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "95%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.black38,
                                  Colors.yellow
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                width: MediaQuery.sizeOf(context).width * 0.12,
                                decoration: BoxDecoration(
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
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.black),
                                        fixedSize: MaterialStatePropertyAll(
                                            Size(150, 50)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "80%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                              ),
                              Text(
                                "The WordPress integration skill for Flutter empowers developers to seamlessly\n\n connect their Flutter applications with WordPress-powered websites. This skill\n\n facilitates the creation of dynamic and engaging mobile experiences that leverage\n\n the content management capabilities of WordPress.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.black38,
                                  Colors.yellow
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "The C programming skill in Flutter involves seamlessly integrating C code or libraries\n\n into a Flutter project, enhancing its functionality and performance. Flutter, primarily\n\n using Dart, can harness the power of existing C code for specific tasks such as\n\n performance-critical computations, data processing, or interfacing with hardware.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                width: MediaQuery.sizeOf(context).width * 0.12,
                                decoration: BoxDecoration(
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
                                      "C Programing",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.black),
                                        fixedSize: MaterialStatePropertyAll(
                                            Size(150, 50)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "95%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.black38,
                                  Colors.yellow
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                width: MediaQuery.sizeOf(context).width * 0.12,
                                decoration: BoxDecoration(
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
                                      "C++",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.black),
                                        fixedSize: MaterialStatePropertyAll(
                                            Size(150, 50)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "95%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.1,
                              ),
                              Text(
                                "The C++ skill for Flutter empowers developers to leverage the efficiency,\n\n performance, and robustness of C++ within their Flutter applications. By seamlessly\n\n integrating C++ code into Flutter projects, developers can unlock a wealth of\n\n possibilities, including high-performance computations, complex algorithms, or the\n\n incorporation of existing C++ libraries.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height * 0.5,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.black38,
                                  Colors.yellow
                                ],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "The Photoshop skill for Flutter developers enriches the app development process by\n\n seamlessly integrating powerful graphic design capabilities. With this skill, developers\n\n can enhance the visual appeal of their Flutter applications by leveraging Photoshop's\n\n advanced image editing and design features. From creating stunning app assets to\n\n optimizing visual elements, this integration enables a more dynamic and visually\n\n appealing user interface.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 25),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.08,
                              ),
                              Container(
                                height: MediaQuery.sizeOf(context).height * 0.3,
                                width: MediaQuery.sizeOf(context).width * 0.12,
                                decoration: BoxDecoration(
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
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.black),
                                        fixedSize: MaterialStatePropertyAll(
                                            Size(150, 50)),
                                        shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "90%",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
