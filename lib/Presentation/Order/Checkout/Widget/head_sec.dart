import 'package:flutter/material.dart';

class HeadSec extends StatelessWidget {
  String text;
  HeadSec({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
