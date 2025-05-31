import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabber/utils/constants/comman/colors.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';
import 'package:grabber/utils/device/device_avail.dart';


class GSearchBar extends StatelessWidget {
  SearchController _searchController = Get.put(SearchController());
   GSearchBar({Key?key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: GSizes.Sm),
      height: GDeviceAvail.getAppBarHeight(),
      decoration: BoxDecoration(color:Gcolour.white,
      borderRadius: BorderRadius.circular(GSizes.searchBarBorder)),
      child: TextField(
        onChanged: (value)=> {_searchController.searchText = value,},
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search",
          prefixIcon: Padding(
            padding: const EdgeInsets.all(GSizes.Sm43),
            child: Icon(Icons.search),
          )
        ),
      ),
      
    );
  }
}
