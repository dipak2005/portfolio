// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/link_section/links.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/responsive/responsive_font_sizer.dart';
import 'package:dipak_portfolio/model/text_section/text_page.dart';
import 'package:dipak_portfolio/model/util/contact_util.dart';
import 'package:dipak_portfolio/model/widget/custome_text_heading.dart';
import 'package:flutter/material.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).height / 8),
      child: Column(
        children: [
          CustomTextHeading(text: "\nGet in Touch"),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.01,
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.sizeOf(context).width * 0.05)
                .copyWith(bottom: 10),
            decoration: BoxDecoration(
                gradient: Theme.of(context).contactCard,
                borderRadius: BorderRadius.circular(27),
                boxShadow: [blackColorShadow]),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/images/contactbird.png",
                      height: 130,
                      fit: BoxFit.fitHeight,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contactHeaDDing,
                          style: TextStyle(
                              fontSize: isFontSize(context, 40),
                              height: 1.3,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).width * 0.01,
                        ),
                        Text(
                          contactSubHeaDDing,
                          style: TextStyle(
                              fontSize: isFontSize(context, 16),
                              fontWeight: FontWeight.w100),
                        ),
                        SizedBox(
                          height: MediaQuery.sizeOf(context).width * 0.02,
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        launchUrl(Uri.parse(Apis().waContact));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                          gradient: bluePurple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          " Get Started ",
                          style: TextStyle(
                              fontSize: isFontSize(context, 18),
                              fontWeight: FontWeight.w400,
                              color: Theme.of(context).textColor),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  color: Colors.white.withOpacity(0.4),
                  height: 1,
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).width * 0.02,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      runSpacing: 50,
                      children: contactUtils
                          .asMap()
                          .entries
                          .map(
                            (e) => IconButton(
                              onPressed: () {
                                launchUrl(Uri.parse(e.value.url));
                              },
                              icon: Image.asset(
                                e.value.icon, height: 40,
                                // color: Theme.of(context).textColor,
                              ),
                              hoverColor: Colors.white,
                              splashColor: Colors.white12,
                              iconSize: 14,
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).width * 0.02,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
