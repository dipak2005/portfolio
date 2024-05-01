// ignore_for_file: prefer_const_constructors

import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/appbar/appbar_logo.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'package:dipak_portfolio/model/responsive/res_widget.dart';

import '../config/export.dart';

class TabletAppbar extends StatelessWidget {
  final MainPageController controller = Get.find<MainPageController>();

  TabletAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).appBarColor),
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? MediaQuery.sizeOf(context).width/8 : 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton.outlined(
            onPressed: () {
              controller.key.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu_outlined,color: Colors.black,),
          ),
          AppbarLogo()
        ],
      ),
    );
  }
}


