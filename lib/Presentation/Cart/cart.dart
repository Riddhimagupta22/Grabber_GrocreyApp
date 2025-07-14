import 'package:flutter/material.dart';
import 'package:grabber/appbar.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppbar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultspace),
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (_, index) => const Column(
                    children: [Row()],
                  ),
              separatorBuilder: (_, __) => const SizedBox(
                    height: GSizes.spacebtwsections,
                  ),
              itemCount: 4),
        ),
      ),
    );
  }
}
