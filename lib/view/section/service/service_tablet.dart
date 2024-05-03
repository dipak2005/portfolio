// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/text_section/text_page.dart';
import 'package:dipak_portfolio/model/util/service_util.dart';
import 'package:dipak_portfolio/model/widget/custome_text_heading.dart';
import 'package:dipak_portfolio/view/section/service/widget/service_card.dart';
import 'package:flutter/material.dart';

class ServicePageTablet extends StatelessWidget {
  const ServicePageTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextHeading(text: '\nWhat I can do?'),
        SizedBox(
          height: MediaQuery.sizeOf(context).width * 0.03,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.01),
          child: CustomSubHeading(text: servicesSubHeading),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).width * 0.05,
        ),
        CarouselSlider.builder(
          options: CarouselOptions(
            viewportFraction: 0.5,
            height: 290,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: true,
          ),
          itemCount: serviceUtil.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.sizeOf(context).width * 0.01),
              child: ServiceCard(
                index: index,
                serviceUtil: serviceUtil[index],
              ),
            );
          },
        )
      ],
    );
  }
}
