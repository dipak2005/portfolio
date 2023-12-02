import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/class.dart';
import 'package:portfolio/screens/webview.dart';

import '../drawer/talk.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool isval=false;
  GlobalKey<FormState> gkey= GlobalKey<FormState>();
  TextEditingController name=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController email=TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name.text=user.name??"";
    email.text=user.email??"";
    phone.text=user.password??"";
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

            SizedBox(
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
                      child: const Text(
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
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.yellow,
                    ),
                    menuMaxHeight: MediaQuery.sizeOf(context).height * 0.2,
                    dropdownColor: Colors.transparent,
                    underline: const SizedBox(),
                    items: [
                      DropdownMenuItem(
                        onTap: () {},
                        value: 0,
                        child: const Text(
                          "Multi page    >",
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ),
                      const DropdownMenuItem(
                        value: 1,
                        child: Text(
                          "one page",
                          style: TextStyle(color: Colors.yellow),
                        ),
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Portfolio",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: Colors.white),
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
                                      child: TextFormField(scrollPadding: EdgeInsets.symmetric(horizontal: 30),
                                        controller: name,
                                        validator: (value) {
                                         if(value?.isEmpty??true){
                                           return "* Please Enter Your Name";
                                         }else{
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
                                          if(value?.isEmpty??true){
                                            return "* Enter Your Email";
                                          }else if(value?.contains("@gmail.com")??true){
                                            return null;
                                          }else{
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
                                          var val=int.tryParse(value!);
                                          if(value?.isEmpty??true){
                                            return "* Enter your Phone Number";
                                          }else if(value != 10){
                                            return "* Invalied Phone Number";
                                          }else{
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
                                      MaterialStatePropertyAll(Colors.yellow),
                                  fixedSize: MaterialStatePropertyAll(
                                    Size(180, 50),
                                  ),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  bool isval=gkey.currentState?.validate()??true;
                                  if(isval){

                                  }
                                },
                                child: Text(
                                  "Send us Message",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black,
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
