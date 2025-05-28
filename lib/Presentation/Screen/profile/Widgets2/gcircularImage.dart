import 'package:flutter/material.dart';
import 'package:grabber/utils/Helpers/helper.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';
import '../../../../utils/constants/comman/colors.dart';

class Gcircularimage extends StatelessWidget {
  final BoxFit? fit;
  final String image;
  final bool isNetworkimage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double height, width, padding;

  const Gcircularimage(
      {super.key,
      this.fit = BoxFit.cover,
      required this.image,
      this.isNetworkimage = false,
      this.overlayColor,
      this.backgroundColor,
      this.height = 56,
      this.width = 56,
      this.padding = GSizes.sm});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: backgroundColor ??
              (GHelperFunction.isDarkMode(context)
                  ? Gcolour.black
                  : Gcolour.white),
          borderRadius: BorderRadius.circular(100)),
      child: Image(
        fit: fit,
        image: isNetworkimage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlayColor,
      ),
    );
  }
}
