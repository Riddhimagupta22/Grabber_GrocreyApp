import 'package:flutter/material.dart';

import '../Widgets/address.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return  Scaffold( body:
      Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: screenWidth*.09),
            child: Address(),
          ),
        ],
      ),
    );
  }
}
