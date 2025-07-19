import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabber/utils/Helpers/helper.dart';
import 'package:grabber/utils/constants/comman/colors.dart';
import 'package:grabber/utils/device/device_avail.dart';

class GAppbar extends StatelessWidget implements PreferredSizeWidget {
  const GAppbar({
    super.key,
    required this.title,
    required this.showBackArrow,
    required this.centerTitle,
    this.leadingIcon,
    this.actions,
    this.leadingOnPresses,
  });

  final Widget title;
  final bool centerTitle;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPresses;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);

    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      leading: showBackArrow
          ? IconButton(
        onPressed: () => Get.back(),
        icon: Icon(
          Icons.arrow_back_ios,
          color: dark ? Gcolour.white : Gcolour.black,
        ),
      )
          : leadingIcon != null
          ? IconButton(
        onPressed: leadingOnPresses,
        icon: Icon(
          leadingIcon,
          color: dark ? Gcolour.white : Gcolour.black,
        ),
      )
          : null,
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(GDeviceAvail.getAppBarHeight());
}
