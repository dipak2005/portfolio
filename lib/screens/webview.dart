import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Webview extends StatefulWidget {
  const Webview({super.key});

  @override
  State<Webview> createState() => _WebviewState();
}

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
            Container(
              height: MediaQuery.sizeOf(context).height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/f.png",
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
                    elevation: 2,
                    alignment: Alignment(0, -0.3),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow,
                    ),

                    menuMaxHeight: MediaQuery.sizeOf(context).height * 0.2,
                    // dropdownColor: Colors.transparent,
                    items: [
                      DropdownMenuItem(
                        onTap: () {
                          DropdownButton(
                            elevation: 2,
                            alignment: Alignment(0, -0.3),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.yellow,
                            ),
                            isDense: true,
                            menuMaxHeight:
                                MediaQuery.sizeOf(context).height * 0.2,
                            items: [],
                            onChanged: (value) {},
                          );
                        },
                        child: Text(
                          "Multi page",
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
                    //   value: dropdown,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.01,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "About",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.01,
                  ),
                  DropdownButton(
                    elevation: 2,
                    alignment: Alignment(0, -0.3),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow,
                    ),
                    isDense: true,
                    menuMaxHeight: MediaQuery.sizeOf(context).height * 0.2,
                    // dropdownColor: Colors.transparent,
                    items: [
                      DropdownMenuItem(
                        onTap: () {
                          DropdownButton(
                            elevation: 2,
                            alignment: Alignment(0, -0.3),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.yellow,
                            ),
                            isDense: true,
                            menuMaxHeight:
                                MediaQuery.sizeOf(context).height * 0.2,
                            items: [],
                            onChanged: (value) {},
                          );
                        },
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
                    //   value: dropdown,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.02,
                  ),
                  DropdownButton(
                    elevation: 2,
                    alignment: Alignment(0, -0.3),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow,
                    ),
                    isDense: true,
                    menuMaxHeight: MediaQuery.sizeOf(context).height * 0.2,
                    // dropdownColor: Colors.transparent,
                    items: [
                      DropdownMenuItem(
                        onTap: () {
                          DropdownButton(
                            elevation: 2,
                            alignment: Alignment(0, -0.3),
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.yellow,
                            ),
                            isDense: true,
                            menuMaxHeight:
                                MediaQuery.sizeOf(context).height * 0.2,
                            items: [],
                            onChanged: (value) {},
                          );
                        },
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
                    //   value: dropdown,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  DropdownButton(
                    elevation: 2,
                    alignment: Alignment(0, -0.3),
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow,
                    ),

                    menuMaxHeight: MediaQuery.sizeOf(context).height * 0.2,
                    // dropdownColor: Colors.transparent,
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
                      child: Text(
                        "Contact",
                        style: TextStyle(color: Colors.yellow),
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
                  CircleAvatar(
                    backgroundColor: Color(0xffC9F31D),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.18,
            ),
            Container(
              decoration: BoxDecoration(color: Color(0xff131313)),
              height: MediaQuery.sizeOf(context).height * 0.7,
              child: Expanded(
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
                            "Dipak k. Thakur",
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
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
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
                                          Colors.yellow)),
                                  onPressed: () {},
                                  child: Text(
                                    "Hire Me",
                                    style: TextStyle(color: Colors.black),
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
                        Positioned(
                          left: 40,
                          bottom: 250,
                          width: 390,
                          child: Transform.rotate(
                            angle: 250,
                            child: Container(
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              width: MediaQuery.sizeOf(context).width * 0.4,
                              decoration:
                                  BoxDecoration(color: Color(0xff131313)),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 240,
                          right: 198,
                          child: CircleAvatar(
                            radius: 140,
                            backgroundColor: Colors.black,
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
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "13+",
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
                            "8K+",
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
                          "assets/images/f.png",
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
                                TextSpan(
                                  text: "Real",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 35),
                                ),
                                TextSpan(
                                    text: " Problem Solutions",
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
                            "Experience",
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
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_circle_right_sharp,
                                          color: Colors.black,
                                          size: 50,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "2023- Present",
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
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_circle_right_sharp,
                                            color: Colors.black,
                                            size: 50,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "2023- Present",
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
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_circle_right_sharp,
                                          color: Colors.black,
                                          size: 50,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "2023- Present",
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
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_circle_right_sharp,
                                            color: Colors.black,
                                            size: 50,
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "2023- Present",
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
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff1F1F1F),
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
                                  color: Colors.black,
                                  size: 35,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.03,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff1F1F1F),
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
                                  "01         Web Development",
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
                                  color: Colors.black,
                                  size: 35,
                                ))
                          ],
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
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff1F1F1F),
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
                                  "01         Game Development",
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
                                  color: Colors.black,
                                  size: 35,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.03,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff1F1F1F),
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
                                  "01         Figma Development",
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
                                  color: Colors.black,
                                  size: 35,
                                ))
                          ],
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
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff1F1F1F),
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
                                  "01         C++ Development",
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
                                  color: Colors.black,
                                  size: 35,
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.03,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.15,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        decoration: BoxDecoration(
                          color: Color(0xff1F1F1F),
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
                                  "01         Python Development",
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
                                  color: Colors.black,
                                  size: 35,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
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
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.yellow),
                                fixedSize:
                                    MaterialStatePropertyAll(Size(200, 50))),
                            onPressed: () {},
                            child: Text(
                              "Learn More      >",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.07,
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
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black),
                                fixedSize:
                                    MaterialStatePropertyAll(Size(150, 50)),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
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
                        width: MediaQuery.sizeOf(context).width * 0.01,
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
                              "assets/images/f.png",
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
                                    MaterialStatePropertyAll(Colors.black),
                                fixedSize:
                                    MaterialStatePropertyAll(Size(150, 50)),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
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
                        width: MediaQuery.sizeOf(context).width * 0.01,
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
                                    MaterialStatePropertyAll(Colors.black),
                                fixedSize:
                                    MaterialStatePropertyAll(Size(150, 50)),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
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
                        width: MediaQuery.sizeOf(context).width * 0.01,
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
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.black),
                                fixedSize:
                                    MaterialStatePropertyAll(Size(150, 50)),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
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
                    ],
                  ),
                  Align(
                    alignment: Alignment(0.63, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                                      MaterialStatePropertyAll(Colors.black),
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(150, 50)),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
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
                          width: MediaQuery.sizeOf(context).width * 0.01,
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
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.black),
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(150, 50)),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
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
                          width: MediaQuery.sizeOf(context).width * 0.01,
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
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.black),
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(150, 50)),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
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
                          width: MediaQuery.sizeOf(context).width * 0.01,
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
                                      MaterialStatePropertyAll(Colors.black),
                                  fixedSize:
                                      MaterialStatePropertyAll(Size(150, 50)),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
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
                        decoration: BoxDecoration(color: Colors.yellow),
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
                            "Mobile Application",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 35),
                          ),
                          Text(
                            "Development",
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_circle_right_sharp,
                              size: 50,
                              color: Color(0xff1F1F1F),
                            ),
                          ),
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
                            "Mobile Application",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 35),
                          ),
                          Text(
                            "Development",
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_circle_right_sharp,
                              size: 50,
                              color: Color(0xff1F1F1F),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.6,
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        decoration: BoxDecoration(color: Colors.yellow),
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
                        decoration: BoxDecoration(color: Colors.yellow),
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
                            "Mobile Application",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 35),
                          ),
                          Text(
                            "Development",
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_circle_right_sharp,
                              size: 50,
                              color: Color(0xff1F1F1F),
                            ),
                          ),
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
                            "Mobile Application",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 35),
                          ),
                          Text(
                            "Development",
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
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_circle_right_sharp,
                              size: 50,
                              color: Color(0xff1F1F1F),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.1,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.6,
                        width: MediaQuery.sizeOf(context).width * 0.3,
                        decoration: BoxDecoration(color: Colors.yellow),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                      fixedSize: MaterialStatePropertyAll(Size(200, 50)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "View More Projects   >",
                      style: TextStyle(color: Colors.black),
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
                                  icon: Icon(Icons.arrow_circle_right_sharp,color: Colors.yellow),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40,),
                          Text("Nice",)
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
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
