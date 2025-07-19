import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber/appbar.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';
import '../../Controller/cartcontroller.dart';
import '../../utils/constants/comman/colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();

    return Scaffold(
      appBar: GAppbar(
        centerTitle: true,
        showBackArrow: true,
        title: Text(
          'Cart',
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
      ),
      body: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return const Center(
            child: Text("Your cart is empty 🛒"),
          );
        }

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(GSizes.defaultspace),
            child: Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cartController.cartItems.length,
                  separatorBuilder: (_, __) => const SizedBox(
                    height: GSizes.spacebtwsections,
                  ),
                  itemBuilder: (context, index) {
                    final productId =
                        cartController.cartItems.keys.toList()[index];
                    final cartItem = cartController.cartItems[productId]!;
                    final product = cartItem.product ?? {};

                    return Container(
                      // padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(GSizes.searchBarBorder),
                            child: Container(
                              height: 100,
                              width: 100,
                              color: Gcolour.lightgrey,
                              child: Image.asset(
                                product['image'] ?? '',
                                height: 60,
                                width: 60,
                              ),
                            ),
                            // Image.network(
                            //   product['imageUrl'] ?? '',
                            //   height: 60,
                            //   width: 60,
                            //   fit: BoxFit.cover,
                            //   errorBuilder: (_, __, ___) =>
                            //   const Icon(Icons.image_not_supported),
                            // ),
                          ),
                          const SizedBox(width: 12),
                          // Product Info
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(product['name'] ?? '',
                                    style:
                                        Theme.of(context).textTheme.bodyLarge),
                                Text("₹${product['price']}",
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              ],
                            ),
                          ),
                          // Quantity Buttons
                          Row(
                            children: [
                              IconButton(
                                icon: const CircleAvatar(
                                    backgroundColor: Gcolour.lightgreen,
                                    radius: 12,
                                    child: Icon(
                                      Icons.remove,
                                      size: 17,
                                    )),
                                onPressed: () =>
                                    cartController.decreaseQuantity(productId),
                              ),
                              Text('${cartItem.quantity}'),
                              IconButton(
                                icon: const CircleAvatar(
                                    backgroundColor: Gcolour.lightgreen,
                                    radius: 12,
                                    child: Icon(
                                      Icons.add,
                                      size: 17,
                                    )),
                                onPressed: () => cartController.addToCart(
                                    productId, product),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete_outline),
                            onPressed: () =>
                                cartController.removeFromCart(productId),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(height: GSizes.spacebtwsections * 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Total:",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("₹${cartController.totalPrice.toStringAsFixed(2)}",
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(height: GSizes.spacebtwsections),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Gcolour.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {

                        },
                        child: Text(
                          "Go to checkout",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              letterSpacing: -0.5,
                              color: Gcolour.white),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
