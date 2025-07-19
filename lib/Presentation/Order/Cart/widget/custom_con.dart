import 'package:flutter/material.dart';

import '../../../../Controller/cartcontroller.dart';
import '../../../../utils/constants/comman/sizes.dart';
class custom_c extends StatelessWidget {
  const custom_c({
    super.key,
    required this.cartController,
  });

  final CartController cartController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const Row(
            children: [
               Icon(Icons.note),
              SizedBox(width: GSizes.xs),
              Text("Add Note",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              SizedBox(width: 150),
              Icon(Icons.arrow_forward_ios,size: 20,)
            ],
          ),
          const Divider(
          ),
          const Row(
            children: [
              Icon(Icons.card_giftcard),
              SizedBox(width: GSizes.xs),
              Text("Send as gift",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              SizedBox(width: 130),
              Icon(Icons.arrow_forward_ios,size: 20,)
            ],
          ),
          const Divider(),
          Row(
            children: [
              const Icon(Icons.delivery_dining_outlined),
              const SizedBox(width: GSizes.xs),
              const Text("Delivery",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              const SizedBox(width: 130),
              Text("₹${cartController.totalPrice.toStringAsFixed(2)}",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700)),
            ],
          ),const Divider(),
          Row(
            children: [
              const Icon(Icons.receipt_outlined),
              const SizedBox(width: GSizes.xs),
              const Text("Total",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              const SizedBox(width: 155),
              Text("₹${cartController.totalPrice.toStringAsFixed(2)}",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700)),
            ],
          ),
        ],
      ),
    );
  }
}