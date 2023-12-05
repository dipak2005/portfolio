import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../drawer/talk.dart';
import '../screens/class.dart';
import '../variables/hover.dart';
import 'dart:ui_web';

class Commencontainer extends StatefulWidget {
  const Commencontainer({super.key});

  @override
  State<Commencontainer> createState() => _CommencontainerState();
}

class _CommencontainerState extends State<Commencontainer> {
  String? selectedvalue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Container(
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
            InkWell(
              onHover: (value) {
                setState(() {
                  home = value;
                });
              },
              onTap: () {},
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  barrierDismissible: true,
                  hint: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 14,
                      color: home ? Colors.yellow : Colors.white,
                    ),
                  ),
                  items: items
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedvalue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedvalue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 40,
                    width: 140,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
            ),
            TextButton(
              onHover: (value) {
                about = value;

                setState(() {});
              },
              onPressed: () {
                Navigator.pushNamed(context, "Skill");
              },
              child: Text(
                "About",
                style: TextStyle(color: about ? Colors.yellow : Colors.white),
              ),
            ),
            InkWell(
              onHover: (value) {
                service = value;
                setState(() {});
              },
              onTap: () {},
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  hint: Text(
                    'Service',
                    style: TextStyle(
                      fontSize: 14,
                      color: service ? Colors.yellow : Colors.white,
                    ),
                  ),
                  items: items1
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedvalue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedvalue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 40,
                    width: 140,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
            ),
            InkWell(
              onHover: (value) {
                portfolio = value;
                setState(() {});
              },
              onTap: () {},
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  hint: Text(
                    'Portfolio',
                    style: TextStyle(
                      fontSize: 14,
                      color: portfolio ? Colors.yellow : Colors.white,
                    ),
                  ),
                  items: items2
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedvalue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedvalue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 40,
                    width: 140,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
            ),
            InkWell(
              onHover: (value) {
                blog = value;
                setState(() {});
              },
              onTap: () {},
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  hint: Text(
                    'Blog',
                    style: TextStyle(
                      fontSize: 14,
                      color: blog ? Colors.yellow : Colors.white,
                    ),
                  ),
                  items: items3
                      .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedvalue,
                  onChanged: (String? value) {
                    setState(() {
                      selectedvalue = value;
                    });
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    height: 40,
                    width: 140,
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    height: 40,
                  ),
                ),
              ),
            ),

            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "Contact");
                },
                onHover: (value) {
                  contact = value;
                  setState(() {});

                },
                child: Text(
                  "Contact",
                  style:
                      TextStyle(color: contact ? Colors.yellow : Colors.white),
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
    );
  }
}
