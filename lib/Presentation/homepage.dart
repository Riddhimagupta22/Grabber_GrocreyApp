import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> categories = [
    {'image': 'Assets/Image/image_38-removebg-preview.png', 'label': 'Fruits'},
    {
      'image': 'Assets/Image/image_39-removebg-preview.png',
      'label': 'Milk & egg'
    },
    {'image': 'Assets/Image/image 37.png', 'label': 'Beverages'},
    {'image': 'Assets/Image/image_41-removebg-preview.png', 'label': 'Laundry'},
    {
      'image': 'Assets/Image/image_36-removebg-preview.png',
      'label': 'Vegetables'
    },
  ];

  final List<Map<String, dynamic>> Fruits = [
    {
      'image': 'Assets/Image/image_44-removebg-preview.png',
      'name': 'Banana',
      'rating': 4.8,
      'price': 3.99
    },
    {
      'image': 'Assets/Image/image_44-removebg-preview.png',
      'name': 'Apple',
      'rating': 4.7,
      'price': 2.99
    },
    {
      'image': 'Assets/Image/image_44-removebg-preview.png',
      'name': 'Orange',
      'rating': 4.6,
      'price': 3.95
    },
  ];

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
                            backgroundColor: Color(0xFFF6F6F6),
                            radius: 32,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                item['image'],
                                fit: BoxFit.contain,
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
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 01),
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
                        color: Color(0xFF0CA201),
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: screenHeight * 0.26,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Fruits.length,
                  itemBuilder: (context, index) {
                    final item = Fruits[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 8),
                      child: Container(
                        width: screenWidth * .4,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(

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

                                    color: Color(0xFFF6F6F6),
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
                                    child: Icon(Icons.add_rounded, color: Colors.black, size: 25),
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
          ],
        ),
      ),
    );
  }
}
