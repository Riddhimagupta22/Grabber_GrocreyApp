import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabber/utils/Helpers/helper.dart';
import 'package:grabber/utils/constants/comman/colors.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';
import 'package:grabber/utils/device/device_avail.dart';

class GSearchBar extends StatelessWidget {
  final bool showbg, showBorder;
  SearchController _searchController = Get.put(SearchController());
  GSearchBar({Key? key, required this.showbg, required this.showBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: GSizes.defaultspace),
      child: Container(
        padding: EdgeInsets.all(GSizes.sm),
        width: GDeviceAvail.getScreenWidth(context),
        height: GDeviceAvail.getAppBarHeight(),
        decoration: BoxDecoration(
            color: showbg
                ? dark
                    ? Gcolour.black
                    : Gcolour.white
                : Colors.transparent,
            border: showBorder ? Border.all(color: Colors.grey) : null,
            borderRadius: BorderRadius.circular(GSizes.searchBarBorder)),
        child: TextField(
          onChanged: (value) => {},
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: Theme.of(context).textTheme.bodySmall,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: GSizes.sm),
                child: Icon(Icons.search),
              )),
        ),
      ),
    );
  }
}
