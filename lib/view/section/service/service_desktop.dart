// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/text_section/text_page.dart';
import 'package:dipak_portfolio/model/util/service_util.dart';
import 'package:dipak_portfolio/model/widget/custome_text_heading.dart';
import 'package:dipak_portfolio/view/section/service/widget/service_card.dart';

class ServicePageDesktop extends StatelessWidget {
  const ServicePageDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width / 8)
              .copyWith(bottom: MediaQuery.sizeOf(context).height * 0.2),
      child: Column(
        children: [
          CustomTextHeading(text: '\nWhat I can do?'),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.02,
          ),
          CustomSubHeading(
            text: servicesSubHeading,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).width * 0.05,
          ),
          Wrap(
            key: key,
            spacing: MediaQuery.sizeOf(context).width * 0.1,
            runSpacing: MediaQuery.sizeOf(context).height * 0.1,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            children: serviceUtil
                .asMap()
                .entries
                .map((e) => ServiceCard(
                      serviceUtil: e.value,
                      index: e.key,
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
