// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/color_section/color_page.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/text_section/text_page.dart';
import 'package:dipak_portfolio/model/util/contact_util.dart';
import 'package:dipak_portfolio/model/widget/custome_text_heading.dart';

class ContactTablet extends StatelessWidget {
  const ContactTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.w,
        ),
        CustomTextHeading(text: contactHeaDDing),
        SizedBox(
          height: 3.w,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSubHeading(text: contactSubHeaDDing),
        ),
        SizedBox(
          height: 5.w,
        ),
        InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              gradient: buttonGradiant,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              " Get Started ",
              style: TextStyle(
                  fontWeight: FontWeight.w500, fontSize: 18, color: blackColor),
            ),
          ),
        ),
        SizedBox(
          height: 10.w,
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
        ),
        SizedBox(
          height: 5.w,
        ),
        Container(
          color: Colors.white.withOpacity(0.2),
          height: 1,
        )
      ],
    );
  }
}
