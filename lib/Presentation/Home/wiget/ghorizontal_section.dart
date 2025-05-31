import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants/comman/colors.dart';

class GHorizontalSection extends StatelessWidget {
  const GHorizontalSection({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            letterSpacing: 0.0,
            height: 1,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              letterSpacing: 0.0,
              color: Gcolour.green,
            ),
          ),
        )
      ],
    );
  }
}
