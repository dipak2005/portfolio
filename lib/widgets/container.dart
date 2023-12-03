import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../drawer/talk.dart';
import '../variables/hover.dart';
import 'dart:ui_web';
class Commencontainer extends StatefulWidget {
  const Commencontainer({super.key});

  @override
  State<Commencontainer> createState() => _CommencontainerState();
}

class _CommencontainerState extends State<Commencontainer> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
                style:
                TextStyle(color: home ? Colors.yellow : Colors.white),
              ),
              onChanged: (value) {},
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.01,
            ),
            TextButton(
              onHover: (value) {
                about = value;

                setState(() {});
              },
              onPressed: () {},
              child: Text(
                "About",
                style: TextStyle(
                    color: about ? Colors.yellow : Colors.white),
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
                  contact = value;
                  setState(() {});
                },
                child: Text(
                  "Contact",
                  style: TextStyle(
                      color: contact ? Colors.yellow : Colors.white),
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
