import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:grabber/Widgets/nav_bar.dart';
import 'package:lottie/lottie.dart';
class Splash  extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 6),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>NavBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final containerWidth = screenWidth * .5;
    final containerWidth1 = screenWidth * .771;
    final containerHeigth = screenHeight * .10;
    final containerHeigth1 = screenHeight * .267;
    final top = screenHeight * .58;
    final top1 = screenHeight * .3;
    final left = screenWidth * .25;
    final left2 = screenWidth * .132;
    final fontsize = screenWidth * .128;

    return Scaffold(
      body: Stack(
        children: [

          Positioned(
            top:top1 ,
            left:left2 ,
            child: SizedBox(
                height:containerHeigth1,
                width: containerWidth1,
                child: Lottie.asset("Assets/Lottie/Animation - 1746261786846.json")),
          ),
          Positioned(
              top: top,
              left: left,
              child: Container(
                width: containerWidth,
                height: containerHeigth,
                child: Text(
                  "Grabber",
                  style: GoogleFonts.balooDa2(
                      fontWeight: FontWeight.w800,
                      fontSize: fontsize,
                      height: 1,

                      color: Color(0XFF0CA201)),
                ),
              ))
        ],
      ),
    );
  }
}
