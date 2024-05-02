class SkillUtil {
  final String logo;
  final double contain;
  final String name;

  SkillUtil({required this.logo, required this.contain, required this.name});
}

List<SkillUtil> skillUtil = [
  SkillUtil(logo: "assets/images/flutter.png", contain: 99.99, name: "Flutter"),
  SkillUtil(logo: "assets/images/dart.png", contain: 99.99, name: "Dart"),
  SkillUtil(
      logo: "assets/images/firebase.png",
      contain: 99.99,
      name: "Flutter Firebase"),
  SkillUtil(logo: "assets/images/java.png", contain: 99.99, name: "Java"),
  SkillUtil(logo: "assets/images/sql.png", contain: 90.90, name: "My Sql"),
  SkillUtil(logo: "assets/images/api.png", contain: 99.99, name: "Rest Apis"),
  SkillUtil(logo: "assets/images/figma.png", contain: 99.99, name: "Figma"),
  SkillUtil(logo: "assets/images/cpp.png", contain: 90.90, name: "C++"),
  SkillUtil(logo: "assets/images/c.png", contain: 99.99, name: "C")
];
