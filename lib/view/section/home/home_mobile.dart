// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/animation/profile_animation.dart';
import 'package:dipak_portfolio/model/link_section/links.dart';
import 'package:dipak_portfolio/model/responsive/responsive_font_sizer.dart';
import 'package:dipak_portfolio/model/text_section/text_page.dart';
import 'package:dipak_portfolio/model/widget/color_change_button.dart';


import '../../../model/config/export.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width * 0.2,
          top: MediaQuery.sizeOf(context).height * 0.2,
          right: MediaQuery.sizeOf(context).height * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FittedBox(
            fit: BoxFit.cover,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hello,
                  style: GoogleFonts.archivo().copyWith(
                    fontSize: isFontSize(context, 16),
                  ),
                ),
                Image.asset(
                  "assets/gifs/hi.gif",
                  height: MediaQuery.sizeOf(context).width * 0.07,
                ),
              ],
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              yourname,
              style: GoogleFonts.archivo().copyWith(
                  fontSize: isFontSize(context, 28),
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.02,
          ),
          FittedBox(fit: BoxFit.cover,
            child: Row(mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "A",
                  style: GoogleFonts.archivo().copyWith(
                      fontSize: isFontSize(context, 18),
                      fontWeight: FontWeight.w400),
                ),
                AnimatedTextKit(
                  animatedTexts: mobileList,
                  isRepeatingAnimation: true,
                  repeatForever: true,
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.04,
          ),
          FittedBox(
            fit: BoxFit.cover,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileAnimation(),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: ColorChangeButton(
                    text: "Download Resume",
                    onTap: () {
                      var resume = Uri.parse(Apis().resume);
                      launchUrl(resume);
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
