import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final iconsize = screenWidth *.05;
    final fontsize = screenWidth * .036;
    return ListTile(
      leading: Icon(Icons.bike_scooter),
      title: Text(
        "61 Hopper street..",
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: fontsize,
          height: 1,
        ),
      ),
      trailing: Icon(Icons.shopping_basket_outlined,size: iconsize,),
    );
  }
}

