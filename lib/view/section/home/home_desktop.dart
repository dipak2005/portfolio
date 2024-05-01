// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/animation/enternce_hii.dart';
import 'package:dipak_portfolio/model/animation/profile_animation.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/text_section/text_page.dart';
import 'package:dipak_portfolio/model/widget/color_change_button.dart';

import '../../../model/config/export.dart';
import '../../../model/link_section/links.dart';
import '../../../model/responsive/responsive_font_sizer.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height/1,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width*0.08),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProfileAnimation(),
            Container(
              margin: EdgeInsets.only(top:MediaQuery.sizeOf(context).width*0.03),
              width: MediaQuery.sizeOf(context).width*0.55,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        hello,
                        style: GoogleFonts.archivo().copyWith(
                          fontSize: 25,
                        ),
                      ),
                      EntranceHii(
                        offset: const Offset(0, 0),
                        delay: const Duration(seconds: 2),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(
                          "assets/gifs/hi.gif",
                          height: MediaQuery.sizeOf(context).width*0.03,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).width*0.01,
                  ),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      yourname,
                      style: GoogleFonts.archivo().copyWith(
                          fontSize: 50,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("A ",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                          )),
                      AnimatedTextKit(
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        animatedTexts: desktopList,
                      ),
                    ],
                  ),
                  SizedBox(
                    height:  MediaQuery.sizeOf(context).width*0.015,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right:  MediaQuery.sizeOf(context).width*0.01),
                    child: Text(
                      miniDescription,
                      style: GoogleFonts.archivo().copyWith(
                          fontSize: isFontSize(context, 18),
                          color: Theme.of(context).textColor.withOpacity(0.6),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height:  MediaQuery.sizeOf(context).width*0.03,
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
      ),
    );
  }
}
