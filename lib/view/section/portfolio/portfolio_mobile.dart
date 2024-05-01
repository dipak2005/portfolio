// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/link_section/links.dart';
import 'package:dipak_portfolio/model/util/project_util.dart';
import 'package:dipak_portfolio/model/widget/color_change_button.dart';
import 'package:dipak_portfolio/model/widget/custome_text_heading.dart';
import 'package:dipak_portfolio/view/section/portfolio/portfolio/project_card.dart';

import '../../../model/text_section/text_page.dart';

class PortFolioMobile extends StatelessWidget {
  const PortFolioMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextHeading(text: "\nprojects"),
        SizedBox(
          height: 3.w,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSubHeading(text: protfolioSubHeading),
        ),
        SizedBox(
          height: 5.w,
        ),
        CarouselSlider.builder(
          itemCount: projectUtilList.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: ProjectCard(projectUtil: projectUtilList[index]),
            );
          },
          options: CarouselOptions(
              height: MediaQuery.sizeOf(context).height * 0.37,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              enableInfiniteScroll: true),
        ),
        SizedBox(
          height: 3.w,
        ),
        ColorChangeButton(
          text: "See More",
          onTap: () {
            launchUrl(Uri.parse(Apis().gitContact));
          },
        ),
      ],
    );
  }
}
