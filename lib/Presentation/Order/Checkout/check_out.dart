import 'package:flutter/material.dart';

import '../../../appbar.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: GAppbar(
      centerTitle: true,
      showBackArrow: true,
      title: Text(
        'Checkout',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(Icons.receipt_long_rounded),
              const SizedBox(
                width: 6,
              ),
              Text(
                'Orders',
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
        )
      ],
    ),);
  }
}
