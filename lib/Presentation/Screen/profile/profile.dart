import 'package:flutter/material.dart';
import 'package:grabber/Presentation/Screen/profile/Widgets2/gcircularImage.dart';
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
                  showActionButton: false, title: 'Personal Information'),
              SizedBox(height: GSizes.spaceBtw),

              Row(
                children: [
                  Text('Name',style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,),
                  Text('Coding',style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
