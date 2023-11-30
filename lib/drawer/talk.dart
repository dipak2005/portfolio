import 'package:flutter/material.dart';

class Talk extends StatefulWidget {
  const Talk({super.key});

  @override
  State<Talk> createState() => _TalkState();
}

class _TalkState extends State<Talk> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NavigationDrawer(
        children: [

        ],
      ),
    );
  }
}
