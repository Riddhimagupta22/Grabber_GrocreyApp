import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber/Presentation/Order/Checkout/Widget/head_sec.dart';
import 'package:grabber/Presentation/Order/payment/paymet.dart';

import '../../../appbar.dart';
import '../../../utils/constants/comman/sizes.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppbar(
        centerTitle: true,
        showBackArrow: true,
        title: Text(
          'Checkout',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadSec(text: 'Payment method'),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){Get.to(Payment());},
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.apple),
                      SizedBox(width: GSizes.xs),
                      Text("Apple pay",
                          style: GoogleFonts.inter(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                      SizedBox(width: 150),
                      Icon(Icons.arrow_forward_ios,size: 20,)
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
