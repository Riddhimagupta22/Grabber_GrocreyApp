import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber/Controller/cartcontroller.dart';
import 'package:grabber/Presentation/Cart/cart.dart';
import 'package:grabber/Presentation/Home/wiget/gvertical_cart.dart';
import 'package:grabber/Presentation/Home/wiget/gvertical_section.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';
import '../../Coman/Widgets/bannerCard.dart';
import '../../utils/constants/comman/colors.dart';
import '../../utils/constants/comman/image.dart';
import 'wiget/ghorizontal_section.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> categories = [
    {'image': GImage.Fruits, 'label': 'Fruits'},
    {'image': GImage.Milkegg, 'label': 'Milk & egg'},
    {'image': GImage.Beverages, 'label': 'Beverages'},
    {'image': GImage.Laundry, 'label': 'Laundry'},
    {'image': GImage.Vegetables, 'label': 'Vegetables'},
  ];

  final List<Map<String, dynamic>> Fruits = [
    {'image': GImage.Banana, 'name': 'Banana', 'rating': 4.8, 'price': 3.99},
    {'image': GImage.Apple, 'name': 'Apple', 'rating': 4.7, 'price': 2.99},
    {'image': GImage.Orange, 'name': 'Orange', 'rating': 4.6, 'price': 3.95},
  ];

  // promo
  final List<Map<String, dynamic>> Banner = [
    {
      'color': Gcolour.lightgreen,
      'title': 'Up to 30% offer',
      'subtitle': 'Enjoy our big offer',
      'image': GImage.Banner1,
      'textbutton': 'Shop Now',
    },
    {
      'color': Gcolour.red,
      'title': 'Up to 25% offer',
      'subtitle': 'On first buyers',
      'image': GImage.Banner2,
      'textbutton': 'Shop Now',
    },
    {
      'color': Gcolour.yellow,
      'title': 'Get Same day\nDeliver',
      'subtitle': 'On orders above \$20',
      'image': GImage.Banner3,
      'textbutton': 'Shop Now',
    }
  ];
  final _cartController = Get.put(CartController());

  final PageController _bannerController = PageController();
  int _currentBannerPage = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.bike_scooter),
        title: const Text(
          "61 Hopper street..",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CartScreen())),
              icon: const Icon(Icons.shopping_basket_outlined),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: SizedBox(
                height: 222,
                child: Column(
                  children: [
                    Expanded(
                      child: PageView.builder(
                        controller: PageController(viewportFraction: 0.92),
                        itemCount: Banner.length,
                        onPageChanged: (index) {
                          setState(() {
                            _currentBannerPage = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          final item = Banner[index];
                          return Bannercard(
                            color: item['color'],
                            title: item['title'],
                            subtitle: item['subtitle'],
                            image: item['image'],
                            textbutton: item['textbutton'],
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),
            // Categories
            SizedBox(
              height: screenHeight * 0.138,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final item = categories[index];
                    return GVerticalSection(item: item);
                  }),
            ),

            // Fruits Title Row
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: GSizes.spaceBtw, vertical: GSizes.xs),
              child: GHorizontalSection(
                text: 'Fruits',
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: screenHeight * 0.3,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Fruits.length,
                    itemBuilder: (context, index) {
                      final item = Fruits[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                          right: 5,
                        ),
                        child: GVerticalCart(
                            item: item, cartController: _cartController),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
