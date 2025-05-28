import 'package:flutter/material.dart';
import 'package:grabber/appbar.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppbar(
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          showBackArrow: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(GSizes.defaultspace),
          child: ListView.separated(
              itemBuilder: (_, index) => Column(),
              separatorBuilder: (_, __) => const SizedBox(
                    height: GSizes.spacebtwsections,
                  ),
              itemCount: 4),
        ),
      ),
    );
  }
}
