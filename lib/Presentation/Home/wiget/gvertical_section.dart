import 'package:flutter/material.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';

import '../../../utils/constants/comman/colors.dart';


class GVerticalSection extends StatelessWidget {
  const GVerticalSection({
    super.key,
    required this.item,
  });

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(GSizes.spaceBtw),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(GSizes.sm),
            width: 66,
            height: 66,
            decoration: BoxDecoration(
            color: Gcolour.lightgrey,
            borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Image.asset(
                item['image'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item['label'],
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium,)
        ],
      ),
    );
  }
}
