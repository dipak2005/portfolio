// ignore_for_file: prefer_const_constructors

import 'package:dipak_portfolio/model/responsive/res_widget.dart';
import 'package:dipak_portfolio/view/section/skill/skill_desktop.dart';
import 'package:dipak_portfolio/view/section/skill/skill_mobile.dart';

import '../../../model/config/export.dart';

class Skill extends StatelessWidget {
  const Skill({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: SkillMobile(), tablet: SkillMobile(), desktop: SkillDesktop());
  }
}
