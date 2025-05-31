
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabber/Presentation/Search/Widgets/searchbar.dart';
import 'package:grabber/Presentation/menu.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';

import '../../utils/constants/comman/colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    SearchController _searchController = Get.put(SearchController());
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: GSizes.spacebtwsections),
              GSearchBar(showbg: false,showBorder: true,),
            ],
          ),
          // appBar: AppBar(
          //     title: GSearchBar(),
          //     bottom: TabBar(
          //         indicatorSize: TabBarIndicatorSize.label,
          //         indicatorColor: Gcolour.green,
          //         isScrollable: true,
          //         tabs: [
          //           Tab(
          //             text: 'All',
          //           ),
          //           Tab(
          //             text: 'Fruits',
          //           ),
          //           Tab(
          //             text: 'Milk & egg',
          //           ),
          //           Tab(
          //             text: 'Beverages',
          //           ),
          //           Tab(
          //             text: 'Laundry',
          //           ),
          //           Tab(
          //             text: 'Vegetables',
          //           ),
          //         ])),
          // body: Obx(() => TabBarView(children: [
          //       _searchController.searchText == '' ? Menu() : SearchProduct(),
          //       _searchController.searchText == ''
          //           ? CategoryProduct(category: 'Fruits')
          //           : SearchProduct(),
          //       _searchController.searchText == ''
          //           ? CategoryProduct(category: 'Milk & egg')
          //           : SearchProduct(),
          //       _searchController.searchText == ''
          //           ? CategoryProduct(category: 'Beverages')
          //           : SearchProduct(),
          //       _searchController.searchText == ''
          //           ? CategoryProduct(category: 'Laundry')
          //           : SearchProduct(),
          //       _searchController.searchText == ''
          //           ? CategoryProduct(category: 'Vegetables')
          //           : SearchProduct(),
          //     ])),
        ));
  }
}
