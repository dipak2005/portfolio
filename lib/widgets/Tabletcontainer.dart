import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabletContainer extends StatefulWidget {
  const TabletContainer({super.key});

  @override
  State<TabletContainer> createState() => _TabletContainerState();
}

class _TabletContainerState extends State<TabletContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.08,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.02,
          ),
          Image.asset(
            "assets/images/appicon.png",
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.03,
          ),
          Text(
            "PortFolio",
            style: TextStyle(
                color: Colors.yellow,
                fontSize: 30,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.57,
          ),

        ],
      ),
    );
  }
}
