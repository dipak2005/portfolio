// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/animation/enternce_hii.dart';
import 'package:dipak_portfolio/model/animation/profile_animation.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/widget/color_change_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../model/config/export.dart';
import '../../../model/link_section/links.dart';
import '../../../model/responsive/responsive_font_sizer.dart';
import '../../../model/text_section/text_page.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height / 1,
      child: Stack(
        children: [
          SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.01,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

                EntranceHii(
                  offset: Offset(0, 0),
                  delay: Duration(seconds: 1),
                  duration: Duration(milliseconds: 800),
                  child: ProfileAnimation(),
                ),
              // ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.02,
                    top: MediaQuery.sizeOf(context).width * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(alignment: Alignment(-0.03, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            hello,
                            style: GoogleFonts.archivo().copyWith(
                              fontSize: 20,
                            ),
                          ),
                          EntranceHii(
                            offset: const Offset(0, 0),
                            delay: const Duration(seconds: 2),
                            duration: const Duration(milliseconds: 800),
                            child: Image.asset(
                              "assets/gifs/hi.gif",
                              height: MediaQuery.sizeOf(context).height * 0.05,
                              width: MediaQuery.sizeOf(context).width*0.05,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.03,
                    ),
                    Align(alignment: Alignment(-0.03, 0),
                      child: Text(
                        yourname,
                        style: GoogleFonts.archivo()
                            .copyWith(fontSize: 50, fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.03,
                    ),
                    EntranceHii(
                      offset: const Offset(-10, 0),
                      delay: const Duration(seconds: 1),
                      duration: const Duration(milliseconds: 800),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(alignment: Alignment(0.4, 0),
                            child: Text(
                              "A",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          AnimatedTextKit(
                            isRepeatingAnimation: true,
                            repeatForever: true,
                            animatedTexts: tabletList,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.03,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:  MediaQuery.sizeOf(context).width*0.2,right:MediaQuery.sizeOf(context).width*0.1 ),
                      child: Text(
                        miniDescription,
                        style: GoogleFonts.archivo().copyWith(
                            fontSize: isFontSize(context, 18),
                            color: Theme.of(context).textColor.withOpacity(0.6),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).width * 0.04,
                    ),
                    ColorChangeButton(
                      text: "Download Resume",
                      onTap: () {
                        var resume = Uri.parse(Apis().resume);
                        launchUrl(resume);
                      },
                    )
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
