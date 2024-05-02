class ServiceUtil {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServiceUtil(
      {required this.name,
      required this.description,
      required this.icon,
      required this.tool});
}

List<ServiceUtil> serviceUtil = [
  ServiceUtil(
      name: "Android App Development",
      description:
          "Are You Interested In The Great Mobile App? Let's Make It A Reality.",
      icon: "assets/images/android.svg",
      tool: ["Flutter"]),
  ServiceUtil(
      name: "Ios App Development",
      description:
          "Are You Interested In The Great Mobile App? Let's Make It A Reality.",
      icon: "assets/images/apple.svg",
      tool: ["Flutter"]),
  ServiceUtil(
      name: "UI/UX Designing",
      description:
          "I'm Creating Elegant Designs Suited To Your Needs Following Core Design Theory.",
      icon: "assets/images/graphic.svg",
      tool: ["Figma"]),
  ServiceUtil(
      name: "Web App Developer",
      description:
          "Do You Have An Idea For Your Next Great Website? Let's Make It a Reality.",
      icon: "assets/images/website.svg",
      tool: ["Flutter"]),
];
