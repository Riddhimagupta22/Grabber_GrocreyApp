import 'package:flutter/material.dart';
import '../../../Controller/cartcontroller.dart';
import '../../../utils/Helpers/helper.dart';
import '../../../utils/constants/comman/colors.dart';
import '../../../utils/constants/comman/sizes.dart';

class GVerticalCart extends StatefulWidget {
  const GVerticalCart({
    super.key,
    required this.item,
    required this.cartController,
  });

  final Map<String, dynamic> item;
  final CartController cartController;

  @override
  State<GVerticalCart> createState() => _GVerticalCartState();
}

class _GVerticalCartState extends State<GVerticalCart> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = GHelperFunction.screenWidth();
    final screenHeight = GHelperFunction.screenHeigth();
    final isDark = GHelperFunction.isDarkMode(context);
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: screenWidth * .4,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: isDark ? Gcolour.darkGrey : Colors.white,
        borderRadius: BorderRadius.circular(GSizes.searchBarBorder),
        boxShadow: const [BoxShadow(color: Colors.white, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(GSizes.searchBarBorder),
                child: Container(
                  color: Gcolour.lightgrey,
                  child: Image.asset(
                    widget.item['image'],
                    height: screenHeight * 0.19,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 7,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 14,
                  child: IconButton(
                    onPressed: () {
                      final productId = widget.item['name'];
                      widget.cartController.addToCart(productId, widget.item);
                      GHelperFunction.showSnakBar(
                          "${widget.item['name']} added to cart");
                    },
                    icon: const Icon(
                      Icons.add_rounded,
                      color: Colors.black,
                      size: 20,
                    ),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Name Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              widget.item['name'],
              style: textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 4),

          // Rating
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Icon(Icons.star, size: 16, color: Colors.orange),
                const SizedBox(width: 4),
                Text(
                  "${widget.item['rating']} (287)",
                  style: textTheme.bodySmall,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          // Price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "\$${widget.item['price']}",
              style: textTheme.bodyLarge,
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
