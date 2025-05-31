import 'package:flutter/material.dart';


class GVerticalSection extends StatelessWidget {
  const GVerticalSection({
    super.key,
    required this.item,
  });

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Gcolour.lightgrey,
            radius: 32,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                item['image'],
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            item['label'],
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.0,
                height: 1),
          )
        ],
      ),
    );
  }
}
