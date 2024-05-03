// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/util/skill_util.dart';
import 'package:dipak_portfolio/view/section/skill/widget/skill_card.dart';

import '../../../model/widget/custome_text_heading.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width / 8)
          .copyWith(bottom: MediaQuery.sizeOf(context).height * 0.2),
      child: Column(
        children: [
          CustomTextHeading(text: '\nMy Skills'),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.05,
          ),
          CarouselSlider.builder(
            options: CarouselOptions(
              viewportFraction: 0.9,
              height: 150,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enableInfiniteScroll: false,
            ),
            itemCount: skillUtil.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).width*0.01),
                child: SkillCard(
                  index: index,
                  skillUtil: skillUtil[index],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
