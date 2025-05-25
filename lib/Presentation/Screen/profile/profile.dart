import 'package:flutter/material.dart';
import 'package:grabber/Presentation/Screen/profile/Widgets2/gcircularImage.dart';
import 'package:grabber/Presentation/Screen/profile/Widgets2/profile_menu.dart';
import 'package:grabber/Presentation/Screen/profile/Widgets2/sectionheading.dart';
import 'package:grabber/appbar.dart';
import 'package:grabber/utils/constants/comman/image.dart';

import '../../../utils/constants/comman/sizes.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GAppbar(
          title: Text(
            'Profile',
          ),
          showBackArrow: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(GSizes.defaultspace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Gcircularimage(
                      image: GImage.Profile,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {}, child: Text('Change Profile Picture'))
                  ],
                ),
              ),
              SizedBox(
                height: GSizes.spaceBtw / 2,
              ),
              Divider(),
              SizedBox(height: GSizes.spaceBtw),
              GSectionHeading(
                  showActionButton: false, title: 'YOUR INFORMATION'),
              SizedBox(height: GSizes.spaceBtw),

              GProfileMenu(title: 'Your orders', onPressed: (){}, icon: Icons.delivery_dining),
              GProfileMenu(title: 'Bookmarked recipes', onPressed: (){}, icon: Icons.fastfood_sharp),
              GProfileMenu(title: 'Address book', onPressed: (){}, icon: Icons.book_sharp),
              GProfileMenu(title: 'GST details', onPressed: (){}, icon: Icons.text_snippet_outlined),
              GProfileMenu(title: 'E-Gift Cards', onPressed: (){}, icon: Icons.card_giftcard),

              SizedBox(height: GSizes.spaceBtw),
              GSectionHeading(
                  showActionButton: false, title: 'PAYMENTS AND COUPONS'),
              SizedBox(height: GSizes.spaceBtw),

              GProfileMenu(title: 'Wallet', onPressed: (){}, icon: Icons.account_balance_wallet_outlined),
              GProfileMenu(title: 'Grabber Money', onPressed: (){}, icon: Icons.account_balance_wallet_outlined),
              GProfileMenu(title: 'Payment Settings', onPressed: (){}, icon: Icons.payment_outlined),
              GProfileMenu(title: 'GST details', onPressed: (){}, icon: Icons.text_snippet_outlined),
              GProfileMenu(title: 'E-Gift Cards', onPressed: (){}, icon: Icons.card_giftcard),

            ],
          ),
        ),
      ),
    );
  }
}
