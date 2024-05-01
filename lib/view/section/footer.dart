// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/link_section/links.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.fromLTRB(0, MediaQuery.sizeOf(context).height, 0.005, 0),
      height: MediaQuery.sizeOf(context).height * 0.07,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Developed By "),
          InkWell(
            onTap: () {
              var git = Uri.parse(Link().gitHub);
              launchUrl(git);
            },
            child: Text(
              "Dipak Thakur 💙",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text("© 2024")
        ],
      ),
    );
  }
}
