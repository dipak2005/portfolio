import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/util/body_util.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../model/config/export.dart';

class BodyPage extends StatelessWidget {
  final MainPageController controller = Get.find<MainPageController>();

  BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemCount: BodyUtil.component.length,
      itemBuilder: (context, index) => BodyUtil.component[index],
      itemScrollController: controller.itemScrollController,
    );
  }
}
