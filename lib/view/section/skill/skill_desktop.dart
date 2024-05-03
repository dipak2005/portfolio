// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/util/skill_util.dart';
import 'package:dipak_portfolio/model/widget/custome_text_heading.dart';
import 'package:dipak_portfolio/view/section/skill/widget/skill_card.dart';

import '../../../model/config/export.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width / 7)
            .copyWith(bottom: MediaQuery.sizeOf(context).height * 0.02),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).width * 0.04,
            ),
            CustomTextHeading(text: "\nMy Skills"),
            SizedBox(
              height: MediaQuery.sizeOf(context).width * 0.04,
            ),
            Wrap(
              spacing: MediaQuery.sizeOf(context).width * 0.03,
              runSpacing: MediaQuery.sizeOf(context).width * 0.03,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: skillUtil
                  .asMap()
                  .entries
                  .map((e) => SkillCard(skillUtil: e.value, index: e.key))
                  .toList(),
            ),
          ],
        ));
  }
}
