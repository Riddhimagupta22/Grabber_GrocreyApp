import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../appbar.dart';
import '../../../utils/constants/comman/sizes.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppbar(
        centerTitle: true,
        showBackArrow: true,
        title: Text(
          'Payment',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.apple),
                    const SizedBox(width: GSizes.xs),
                    Text("Apple pay",
                        style: GoogleFonts.inter(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    const SizedBox(width: 150),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.payment),
                    const SizedBox(width: GSizes.xs),
                    Text("Pay with card",
                        style: GoogleFonts.inter(
                            fontSize: 16, fontWeight: FontWeight.w400)),
                    const SizedBox(width: 120),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
