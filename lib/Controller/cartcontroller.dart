import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Model/cart.dart';

class CartController extends GetxController {
  var cartItems = <String, Cart>{}.obs;

  void addToCart(String productId, Map<String, dynamic> productData) {
    if (cartItems.containsKey(productId)) {
      cartItems[productId]!.quantity =
          (cartItems[productId]!.quantity ?? 1) + 1;
    } else {
      cartItems[productId] = Cart(product: productData, quantity: 1);
    }
  }

  void removeFromCart(String productId) {
    cartItems.remove(productId);
  }

  void decreaseQuantity(String productId) {
    if (!cartItems.containsKey(productId)) return;

    if ((cartItems[productId]!.quantity ?? 1) > 1) {
      cartItems[productId]!.quantity =
          (cartItems[productId]!.quantity ?? 1) - 1;
    } else {
      cartItems.remove(productId);
    }
  }

  void clearCart() {
    cartItems.clear();
  }


  int get totalItems => cartItems.length;


  int get totalQuantity =>
      cartItems.values.fold(0, (sum, item) => sum + (item.quantity ?? 0));


  double get totalPrice => cartItems.values.fold(0.0, (sum, item) {
        final price = item.product?['price'] ?? 0.0;
        return sum + (price * (item.quantity ?? 0));
      });


  Future<void> saveCartToFirestore(String userId) async {
    final cartList = cartItems.entries.map((entry) {
      return {
        'productId': entry.key,
        'product': entry.value.product,
        'quantity': entry.value.quantity,
      };
    }).toList();

    await FirebaseFirestore.instance
        .collection('carts')
        .doc(userId)
        .set({'items': cartList});
  }


  Future<void> loadCartFromFirestore(String userId) async {
    final doc =
        await FirebaseFirestore.instance.collection('carts').doc(userId).get();

    if (doc.exists) {
      final List<dynamic> items = doc.data()?['items'] ?? [];

      cartItems.clear();
      for (var item in items) {
        final productId = item['productId'];
        cartItems[productId] = Cart(
          product: item['product'],
          quantity: item['quantity'],
        );
      }
    }
  }
}
