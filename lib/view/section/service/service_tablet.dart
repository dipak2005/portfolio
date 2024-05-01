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
          height: 3.w,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSubHeading(text: servicesSubHeading),
        ),
        SizedBox(
          height: 5.w,
        ),
        CarouselSlider.builder(
          options: CarouselOptions(
            viewportFraction: 0.6,
            height: 300,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
          itemCount: serviceUtil.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 0.5.w),
              child: ServiceCard(
                serviceUtil: serviceUtil[index],
              ),
            );
          },
        )
      ],
    );
  }
}
