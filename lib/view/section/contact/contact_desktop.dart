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
            height: 10.w,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contactHeaDDing,
                          style: TextStyle(
                              fontSize: 8.sp,
                              height: 1.3,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10.w,
                        ),
                        Text(
                          contactSubHeaDDing,
                          style: TextStyle(
                              fontSize: isFontSize(context, 16),
                              fontWeight: FontWeight.w100),
                        ),
                        SizedBox(
                          height: 2.w,
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
                          gradient: buttonGradiant,
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
                  height: 2.w,
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
                          icon: Image.network(
                            e.value.icon,
                            color: Theme.of(context).textColor,
                          ),
                          highlightColor: Colors.white,
                          iconSize: 18,
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
