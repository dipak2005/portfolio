// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/controller/mainpage_controller.dart';
import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'model/config/export.dart';
import 'view/section/main_section/MainPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyPortFolio());
}

class MyPortFolio extends StatelessWidget {
final MainPageController controller=Get.put(MainPageController());
   MyPortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: PortFolioTheme.lightTheme,
      darkTheme: PortFolioTheme.darkTheme,
      themeMode: Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
      initialRoute: "/",
      routes: {
        "/": (p0) => MainPage(),
      },
    );
  }
}
