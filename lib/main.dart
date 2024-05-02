// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dipak_portfolio/model/portfolio_theme/theme.dart';
import 'model/config/export.dart';
import 'view/section/main_section/MainPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyPortFolio());
}

class MyPortFolio extends StatelessWidget {
  const MyPortFolio({super.key});

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
