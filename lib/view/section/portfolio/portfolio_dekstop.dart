// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/link_section/links.dart';
import 'package:dipak_portfolio/model/text_section/text_page.dart';
import 'package:dipak_portfolio/model/util/project_util.dart';
import 'package:dipak_portfolio/model/widget/color_change_button.dart';
import 'package:dipak_portfolio/model/widget/custome_text_heading.dart';
import 'package:dipak_portfolio/view/section/portfolio/portfolio/project_card.dart';

class PortFolioDesktop extends StatelessWidget {
  const PortFolioDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 8),
      child: Column(
        children: [
          CustomTextHeading(text: "\nprojects"),
          SizedBox(
            height: 1.w,
          ),
          CustomSubHeading(text: protfolioSubHeading),
          SizedBox(
            height: 2.w,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            runSpacing: 3.w,
            children: projectUtilList
                .asMap()
                .entries
                .map((e) => ProjectCard(projectUtil: e.value))
                .toList(),
          ),
          SizedBox(
            height: 3.w,
          ),
          ColorChangeButton(
            text: "See More",
            onTap: () {
              launchUrl(Uri.parse(Apis().gitContact));
            },
          )
        ],
      ),
    );
  }
}
