import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabber/utils/device/device_avail.dart';

class GAppbar extends StatelessWidget implements PreferredSizeWidget {
  const GAppbar(
      {super.key,
      required this.title,
      required this.showBackArrow,
      this.leadingIcon,
      this.actions,
      this.leadingOnPresses});

  final Widget title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPresses;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () => Get.back(), icon: const Icon(Icons.arrow_left))
              : leadingIcon != null
                  ? IconButton(
                      onPressed: leadingOnPresses, icon: Icon(leadingIcon))
                  : null,
          title: title,
          actions: actions,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(GDeviceAvail.getAppBarHeight());
}
