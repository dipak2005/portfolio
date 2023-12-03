import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/class.dart';
import 'package:portfolio/web/webview.dart';
import 'package:portfolio/variables/hover.dart';
import 'package:portfolio/widgets/container.dart';

import '../drawer/talk.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool isval = false;
  GlobalKey<FormState> gkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name.text = user.name ?? "";
    email.text = user.email ?? "";
    phone.text = user.password ?? "";
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
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
           Commencontainer(),
            Container(
              height: MediaQuery.sizeOf(context).height * 1.3,
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onHover: (value) {
                          portfolio = value;
                          setState(() {});
                        },
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Portfolio",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: portfolio ? Colors.yellow : Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "*  Contact",
                        style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.13,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Get in Touch",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Let's Talk For Your",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 40),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Next Projects",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.w700,
                                fontSize: 40),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height * 0.8,
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        decoration: BoxDecoration(
                          color: Color(0xff1F1F1F),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Flex(
                              mainAxisSize: MainAxisSize.min,
                              direction: Axis.horizontal,
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  "Full Name *",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                ),
                                Text(
                                  "Email Address *",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.15,
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: TextFormField(
                                        scrollPadding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        controller: name,
                                        validator: (value) {
                                          if (value?.isEmpty ?? true) {
                                            return "* Please Enter Your Name";
                                          } else {
                                            return null;
                                          }
                                        },
                                        decoration: InputDecoration(
                                            hintText: "Your name",
                                            focusColor: Colors.yellow,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            hoverColor: Colors.yellow,
                                            filled: true,
                                            fillColor: Color(0xff2F2F2F)),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: TextFormField(
                                        controller: email,
                                        validator: (value) {
                                          if (value?.isEmpty ?? true) {
                                            return "* Enter Your Email";
                                          } else if (value
                                                  ?.contains("@gmail.com") ??
                                              true) {
                                            return null;
                                          } else {
                                            return "* Invalied Email";
                                          }
                                        },
                                        decoration: InputDecoration(
                                            hintText: "Your Email",
                                            focusColor: Colors.yellow,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            hoverColor: Colors.yellow,
                                            filled: true,
                                            fillColor: Color(0xff2F2F2F)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Flex(
                              mainAxisSize: MainAxisSize.min,
                              direction: Axis.horizontal,
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  "Full Name *",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                ),
                                Text(
                                  "Email Address *",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.15,
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: TextFormField(
                                        controller: phone,
                                        validator: (value) {
                                          var val = int.tryParse(value!);
                                          if (value?.isEmpty ?? true) {
                                            return "* Enter your Phone Number";
                                          } else if (value != 10) {
                                            return "* Invalied Phone Number";
                                          } else {
                                            return null;
                                          }
                                        },
                                        decoration: InputDecoration(
                                            hintText: "+91 0000000000",
                                            focusColor: Colors.yellow,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            hoverColor: Colors.yellow,
                                            filled: true,
                                            fillColor: Color(0xff2F2F2F)),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            hintText:
                                                "I will like to discussed",
                                            focusColor: Colors.yellow,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            hoverColor: Colors.yellow,
                                            filled: true,
                                            fillColor: Color(0xff2F2F2F)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Align(
                              alignment: Alignment(-0.85, 0),
                              child: Text(
                                "Text Area *",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: TextFormField(
                                    maxLines: 4,
                                    decoration: InputDecoration(
                                        hintText: "Write Message",
                                        focusColor: Colors.yellow,
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        hoverColor: Colors.yellow,
                                        filled: true,
                                        fillColor: Color(0xff2F2F2F)),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.9, 0),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(message?Colors.black:Colors.yellow),
                                  fixedSize: MaterialStatePropertyAll(
                                    Size(180, 50),
                                  ),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                onHover: (value) {
                                  message=value;
                                  setState(() {});
                                },
                                onPressed: () {
                                  bool isval =
                                      gkey.currentState?.validate() ?? true;
                                  if (isval) {}
                                },
                                child: Text(
                                  "Send us Message",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: message?Colors.white:Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.sizeOf(context).height * 0.06,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
