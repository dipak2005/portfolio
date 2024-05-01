class ProjectUtil {
  final String banners;
  final String icons;
  final String title;
  final String description;
  final String link;

  ProjectUtil({required this.icons,
    required this.description,
    required this.link,
    required this.banners,
    required this.title});
}
  List<ProjectUtil> projectUtilList = [
    ProjectUtil(
      description:
          "This is Chat App by Using Flutter ,Source Code is also available ,check now.",
      title: " Awesome ChatBox App ",
      icons: "assets/images/flutter.png",
      link: "https://github.com/dipak2005/chatbox",
      banners: "assets/images/app.png",
    ),
    ProjectUtil(
      description:
      "This is Weather Forecast by Using Flutter ,Source Code is also available ,check now.",
      title: " Awesome Weather App ",
      icons: "assets/images/flutter.png",
      link: "https://github.com/dipak2005/weather",
      banners: "assets/images/weather.png",
    ),
    ProjectUtil(
      description:
      "This is Expense Tracker by Using Flutter ,Source Code is also available ,check now.",
      title: " Awesome Expense Tracker App ",
      icons: "assets/images/flutter.png",
      link: "https://github.com/dipak2005/expanse_tracker",
      banners: "assets/images/budget.png",
    ),
    ProjectUtil(
      description:
      "This is  My Galaxy Planet  by Using Flutter ,Source Code is also available ,check now.",
      title: " Awesome Galaxy App ",
      icons: "assets/images/flutter.png",
      link: "https://github.com/dipak2005/my_galaxy",
      banners: "assets/images/galaxy.png",
    ),
   

  ];

