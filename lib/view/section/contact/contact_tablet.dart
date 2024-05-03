// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/text_section/text_page.dart';
import 'package:dipak_portfolio/model/util/contact_util.dart';
import 'package:dipak_portfolio/model/widget/custome_text_heading.dart';
import 'package:flutter/cupertino.dart';

class ContactTablet extends StatelessWidget {
  const ContactTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).width * 0.01,
        ),
        FittedBox(fit: BoxFit.scaleDown,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/contactbird.png",
                height: 100,
                fit: BoxFit.fitHeight,
              ),
              CustomTextHeading(text: contactHeaDDing),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).width * 0.03,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.01),
          child: CustomSubHeading(text: contactSubHeaDDing),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).width * 0.005,
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              gradient: bluePurple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              " Get Started ",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).width * 0.01,
        ),
        Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 40,
          children: contactUtils
              .asMap()
              .entries
              .map(
                (e) => IconButton(
                  onPressed: () {
                    launchUrl(Uri.parse(e.value.url));
                  },
                  icon: Image.asset(
                    e.value.icon,
                    height: 50,
                    width: 50,
                  ),
                  highlightColor: Colors.white,
                  iconSize: 18,hoverColor: Colors.white,
                ),
              )
              .toList(),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).width * 0.005,
        ),
        Container(
          color: Colors.white.withOpacity(0.2),
          height: 1,
        )
      ],
    );
  }
}
