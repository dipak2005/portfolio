class ServiceUtil {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServiceUtil({required this.name,
    required this.description,
    required this.icon,
    required this.tool});
}
  List<ServiceUtil> serviceUtil = [
    ServiceUtil(
        name: "Android App Development",
        description:
            "Are you interested in the great Mobile app? Let's make it a reality.",
        icon: "assets/images/android.svg",
        tool: ["Flutter"]),
    ServiceUtil(
        name: "Ios App Development",
        description:
            "Are you interested in the great Mobile app? Let's make it a reality.",
        icon: "assets/images/apple.svg",
        tool: ["Flutter"]),
    ServiceUtil(
        name: "UI/UX Designing",
        description:
            "I'm creating elegant designs suited to your needs following core design theory.",
        icon: "assets/images/graphic.svg",
        tool: ["Figma"]),
    ServiceUtil(
        name: "Web App Developer",
        description:
            "Do you have an idea for your next great website? Let's make it a reality.",
        icon: "assets/images/website.svg",
        tool: ["Flutter"]),
  ];

