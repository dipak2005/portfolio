// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/controller/skill_card_controller.dart';
import 'package:dipak_portfolio/model/config/export.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/responsive/res_widget.dart';
import 'package:dipak_portfolio/model/responsive/responsive_font_sizer.dart';
import 'package:dipak_portfolio/model/util/service_util.dart';
import 'package:dipak_portfolio/model/util/skill_util.dart';
import 'package:dipak_portfolio/model/widget/custome_text_heading.dart';
import 'package:flutter/material.dart';

import '../../../../model/color_section/color_page.dart';

class SkillCard extends StatefulWidget {
  final SkillUtil skillUtil;
  final int index;

  SkillCard({super.key, required this.skillUtil, required this.index});

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard>
    with SingleTickerProviderStateMixin {
  final SkillCardController controller = Get.put(SkillCardController());
  RxInt currentNumber = 0.obs;
  late final AnimationController numController;
  late final AnimationController colorController;

  @override
  void initState() {
    numController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );

    final Animation<int> animation = IntTween(
            begin: currentNumber.value, end: (widget.skillUtil.contain).toInt())
        .animate(numController);

    animation.addListener(() {
      setState(() {
        currentNumber.value = animation.value;
      });
    });

    numController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {},
      onHover: (value) {
        if (value) {
          controller.setHover(widget.index);
        } else {
          controller.setHover(-1);
        }
      },
      child: Obx(
        () => Container(
          height: controller.hoverIndex.value == widget.index ? 150 : null,
          width: Responsive.isTablet(context) ? 400 : 300,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            gradient: controller.hoverIndex.value == widget.index
                ? bluePurple
                : Theme.of(context).serviceCard,
            borderRadius: BorderRadius.circular(16),
            boxShadow: controller.hoverIndex.value == widget.index
                ? [primaryColorShadow]
                : [blackColorShadow],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: controller.hoverIndex.value == widget.index
                        ? Colors.white
                        : Colors.transparent,
                    child: Image.asset(
                      widget.skillUtil.logo,
                      height: 30,
                    ),
                  ),
                  Text(
                    widget.skillUtil.name,
                    style: GoogleFonts.abhayaLibre().copyWith(
                        fontSize: isFontSize(context, 20),
                        color: controller.hoverIndex.value == widget.index
                            ? Colors.white
                            : Theme.of(context).textColor),
                  )
                ],
              ),
              controller.hoverIndex.value == widget.index
                  ? SizedBox(
                      height: MediaQuery.sizeOf(context).width * 0.01,
                    )
                  : SizedBox.shrink(),
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(20),
                backgroundColor: Colors.white,
                value: (currentNumber.value).toDouble(),
              ),
              controller.hoverIndex.value == widget.index
                  ? SizedBox(
                      height: MediaQuery.sizeOf(context).width * 0.01,
                    )
                  : SizedBox.shrink(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedBuilder(
                    animation: numController,
                    builder: (context, child) {
                      return Text(
                        '$currentNumber %',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: controller.hoverIndex.value == widget.index
                                ? Colors.white
                                : Theme.of(context).textColor),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
