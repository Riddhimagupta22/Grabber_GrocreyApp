import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber/utils/constants/sizes.dart';

class Bannercard extends StatelessWidget {
  final Color color;
  final String title, subtitle, image, textbutton;
  const Bannercard(
      {required this.color,
      required this.title,
      required this.subtitle,
      required this.image,
      required this.textbutton});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2,right: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 47.0,left: 25,right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w700)),
                SizedBox(height: 6),
                Text(subtitle, style: GoogleFonts.inter(fontSize: 13, fontWeight: FontWeight.w600)),
                SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text(textbutton, style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize:12,color: Colors.black)),
                ),
              ],
            ),
          ),
          Positioned(right:2,bottom:10,child: Image.asset(image, height: 210, width: 150, fit: BoxFit.contain))
        ],
      ),

    );
  }
}
