import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber/utils/constants/colors.dart';
import 'package:grabber/utils/constants/sizes.dart';

import '../utils/constants/bannerCard.dart';
import '../utils/constants/image.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> categories = [
    {'image': GImage.Fruits, 'label': 'Fruits'},
    {
      'image': GImage.Milkegg,
      'label': 'Milk & egg'
    },
    {'image': GImage.Beverages, 'label': 'Beverages'},
    {'image': GImage.Laundry, 'label': 'Laundry'},
    {
      'image': GImage.Vegetables,
      'label': 'Vegetables'
    },
  ];

  final List<Map<String, dynamic>> Fruits = [
    {
      'image': GImage.Banana,
      'name': 'Banana',
      'rating': 4.8,
      'price': 3.99
    },
    {
      'image': GImage.Apple,
      'name': 'Apple',
      'rating': 4.7,
      'price': 2.99
    },
    {
      'image': GImage.Orange,
      'name': 'Orange',
      'rating': 4.6,
      'price': 3.95
    },];

    // promo
   final List<Map<String, dynamic>> Banner = [

     {
       'color': Gcolour.lightgreen,
       'title': 'Up to 30% offer',
       'subtitle': 'Enjoy our big offer',
       'image': GImage.Banner1,
       'textbutton':'Shop Now',
     }, {
       'color':Gcolour.red,
       'title':'Up to 25% offer',
       'subtitle': 'On first buyers',
       'image':GImage.Banner2,
       'textbutton':'Shop Now',
     } ,{
       'color':Gcolour.yellow,
       'title': 'Get Same day\nDeliver',
       'subtitle': 'On orders above \$20',
       'image':GImage.Banner3,
       'textbutton':'Shop Now',
     }
];

   final PageController _bannerController = PageController();
   int _currentBannerPage = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final iconsize = screenWidth * .05;
    final fontsize = screenWidth * .036;

    return Scaffold(
      appBar: AppBar(

          backgroundColor: Colors.white,
          elevation: 0,
          title: ListTile(
            leading: Icon(Icons.bike_scooter),
            title: Text(
              "61 Hopper street..",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: fontsize,
                height: 1,
              ),
            ),
            trailing: Icon(
              Icons.shopping_basket_outlined,
              size: iconsize,
            ),
          )),
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
                    SizedBox(height: 8),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),
            // Categories
            SizedBox(
              height: screenHeight * 0.12,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final item = categories[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Gcolour.lightgrey,
                            radius: 32,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                item['image'],
                                fit: BoxFit.cover,
                                height: 40,
                                width: 40,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            item['label'],
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.0,
                                height: 1),
                          )
                        ],
                      ),
                    );
                  }),
            ),

            // Fruits Title Row
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fruits",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      letterSpacing: 0.0,
                      height: 1,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See all',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        letterSpacing: 0.0,
                        color: Gcolour.green,
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: screenHeight * 0.26,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Fruits.length,
                    itemBuilder: (context, index) {
                      final item = Fruits[index];
                      return Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 5,),
                        child: Container(
                          width: screenWidth * .4,
                          margin: EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),

                            boxShadow: [
                              BoxShadow(color: Colors.white, blurRadius: 4)
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Container(

                                      color: Gcolour.lightgrey,
                                      child: Image.asset(
                                        item['image'],
                                        height: screenHeight * 0.17,
                                        width: double.infinity,


                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 4,
                                    right: 7,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 14,
                                      child: IconButton(onPressed:(){},icon: Icon(Icons.add_rounded, color: Colors.black, size: 25,),padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                item['name'],
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                ),
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Icon(Icons.star, size: 16, color: Colors.orange),
                                  SizedBox(width: 4),
                                  Text(
                                    "${item['rating']} (287)",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      letterSpacing: 0.0,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                "\$${item['price']}",
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
