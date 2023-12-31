import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Talk extends StatefulWidget {
  const Talk({super.key});

  @override
  State<Talk> createState() => _TalkState();
}

class _TalkState extends State<Talk> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width * 0.3,
        decoration: const BoxDecoration(color: Colors.black),
        child: NavigationDrawer(
          backgroundColor: const Color(0xff131313),
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
             mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 50,
                  child: Image.asset("assets/images/appicon.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Profile",
                  style: GoogleFonts.abrilFatface(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 2),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "   Fresher",
                    style: GoogleFonts.abrilFatface(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.yellow,
                        letterSpacing: 2),
                  ),
                  TextSpan(
                    text: "  Flutter ",
                    style: GoogleFonts.abrilFatface(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.yellow,
                        letterSpacing: 2),
                  ),
                  TextSpan(
                    text: "  Developer",
                    style: GoogleFonts.abrilFatface(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 2),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment(-0.2, 0),
              child: Text(
                "*  Uniqe Developer  *",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment(-0.8, 0),
              child: Text(
                "My Personal Details : -",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.005,
                ),
                const Icon(
                  Icons.location_on_outlined,
                  size: 30,
                  color: Colors.yellow,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "Harshidhdhi Park Society \n\n Ribda Rajkot- 360311 ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.005,
                ),
                const Icon(
                  Icons.email_outlined,
                  color: Colors.yellow,
                  size: 30,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.02,
                ),
                const Text(
                  "d74252835@gmail.com",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.005,
                ),
                const Icon(
                  Icons.call,
                  color: Colors.yellow,
                  size: 30,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.01,
                ),
                const Text(
                  " +91 1478523690",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 17),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
                alignment: Alignment(-0.9, 0),
                child: Text(
                  "Contact Me : -",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 17),
                )),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width*0.03,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,radius: 20,
                  child:
                      Image.asset("assets/images/con.png", color: Colors.black,fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,radius: 20,
                  child: Image.asset("assets/images/con1.png",fit: BoxFit.cover,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,radius: 20,
                  child: Image.asset(
                    "assets/images/con2.png",fit: BoxFit.cover,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,radius: 20,
                  child: Image.asset("assets/images/con3.png",fit: BoxFit.cover,
                      color: Colors.black),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
