import 'package:dipak_portfolio/model/link_section/links.dart';

class ContactUtils {
  final String url;
  final String icon;

  ContactUtils({required this.url, required this.icon});
}

List<ContactUtils> contactUtils = [
  ContactUtils(url: Apis().gitContact, icon: Link().gitHub),
  ContactUtils(url: Apis().faceContact, icon: Link().faceBook),
  ContactUtils(url: Apis().waContact, icon: Link().whatsApp),
  ContactUtils(url: Apis().xContact, icon: Link().x),
  ContactUtils(url: Apis().linkDinContact, icon: Link().linkDin),
  ContactUtils(url: Apis().instAContact, icon: Link().instAGram),
];


