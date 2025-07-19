import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants/comman/colors.dart';

class GElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const GElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Gcolour.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,

        child: Text(
          text,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              letterSpacing: -0.5,
              color: Gcolour.white),
        ),
      ),
    );
  }
}
