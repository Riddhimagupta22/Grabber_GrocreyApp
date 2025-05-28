import 'package:flutter/material.dart';
import 'package:grabber/appbar.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GAppbar(
        title: Text(
          "Favourite",
          style: Theme.of(context).textTheme.headlineMedium,
        ), showBackArrow: false
      ),

    );
  }
}
