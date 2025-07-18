import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabber/Controller/cartcontroller.dart';
import 'package:grabber/Presentation/Cart/cart.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';
import 'package:grabber/utils/constants/comman/colors.dart';
import 'package:grabber/utils/constants/comman/image.dart';
import 'package:grabber/Coman/Widgets/bannerCard.dart';
import '../../Controller/loaction_controller.dart';
import 'wiget/ghorizontal_section.dart';
import 'wiget/gvertical_cart.dart';
import 'wiget/gvertical_section.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final locationController = Get.put(LocationController());
  final cartController = Get.put(CartController());

  final categories = [
    {'image': GImage.Fruits, 'label': 'Fruits'},
    {'image': GImage.Milkegg, 'label': 'Milk & Egg'},
    {'image': GImage.Beverages, 'label': 'Beverages'},
    {'image': GImage.Laundry, 'label': 'Laundry'},
    {'image': GImage.Vegetables, 'label': 'Vegetables'},
  ];

  final fruits = [
    {'image': GImage.Banana, 'name': 'Banana', 'rating': 4.8, 'price': 3.99},
    {'image': GImage.Apple, 'name': 'Apple', 'rating': 4.7, 'price': 2.99},
    {'image': GImage.Orange, 'name': 'Orange', 'rating': 4.6, 'price': 3.95},
  ];

  final List<Map<String, dynamic>> banners = [
    {
      'color': Gcolour.lightgreen,
      'title': 'Up to 30% Offer',
      'subtitle': 'Enjoy our big offer',
      'image': GImage.Banner1,
      'textbutton': 'Shop Now',
    },
    {
      'color': Gcolour.red,
      'title': 'Up to 25% Offer',
      'subtitle': 'On first buyers',
      'image': GImage.Banner2,
      'textbutton': 'Shop Now',
    },
    {
      'color': Gcolour.yellow,
      'title': 'Same Day Delivery',
      'subtitle': 'On orders above \$20',
      'image': GImage.Banner3,
      'textbutton': 'Shop Now',
    }
  ];



  final PageController _bannerController = PageController(viewportFraction: 0.92);
  int _currentBannerPage = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.bike_scooter),
         title:
         Obx(() => Text(
           locationController.location.value,
           overflow: TextOverflow.ellipsis,
           style: Theme.of(context).textTheme.bodyLarge,
         )),


          actions: [
          IconButton(
            onPressed: () => Get.to(() => const CartScreen()),
            icon: const Icon(Icons.shopping_basket_outlined),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: SizedBox(
                height: 222,
                child: PageView.builder(
                  controller: _bannerController,
                  itemCount: banners.length,
                  onPageChanged: (index) {
                    setState(() => _currentBannerPage = index);
                  },
                  itemBuilder: (context, index) {
                    final item = banners[index];
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
            ),

            const SizedBox(height: GSizes.spacebtwsections),


            SizedBox(
              height: screenHeight * 0.138,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GVerticalSection(item: categories[index]);
                },
              ),
            ),


            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: GSizes.spaceBtw, vertical: GSizes.xs),
              child: GHorizontalSection(text: 'Fruits'),
            ),
            const SizedBox(height: GSizes.xs),

            SizedBox(
              height: screenHeight * 0.31,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: GSizes.spaceBtw,left: 15),
                    child: GVerticalCart(
                      item: fruits[index],
                      cartController: cartController,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
