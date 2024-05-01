// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:dipak_portfolio/view/splash.dart';
import 'model/config/export.dart';
import 'view/section/main_section/MainPage.dart';

void main() {
  runApp(const MyPortFolio());
}

class MyPortFolio extends StatelessWidget {
  const MyPortFolio({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/":(p0) => MainPage(),

      },
    );
  }
}
