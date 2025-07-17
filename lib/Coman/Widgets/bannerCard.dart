import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';

class Bannercard extends StatelessWidget {
  final Color color;
  final String title, subtitle, image, textbutton;

  const Bannercard({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.textbutton,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDark ? Colors.white : Colors.black;

    return Container(
      margin: const EdgeInsets.only(
        left: 2,
        right: GSizes.spaceBtw,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(GSizes.bannerRadius),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: GSizes.md,
              vertical: GSizes.md + 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: GSizes.fontSizeLg,
                    fontWeight: FontWeight.w700,
                    color: textColor,
                  ),
                ),
                const SizedBox(height: GSizes.xs),
                Text(
                  subtitle,
                  style: GoogleFonts.inter(
                    fontSize: GSizes.fontSizeSm1,
                    fontWeight: FontWeight.w600,
                    color: textColor.withOpacity(0.85),
                  ),
                ),
                const SizedBox(height: GSizes.sm),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: GSizes.md,
                      vertical: GSizes.xs,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(GSizes.xs),
                    ),
                    elevation: 2,
                  ),
                  child: Text(
                    textbutton,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: GSizes.fontSizeSm,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 2,
            bottom: 10,
            child: Image.asset(
              image,
              height: 210,
              width: 150,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
