// Main file with NavBar and Home integration
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grabber/utils/Helpers/helper.dart';
import 'package:grabber/utils/constants/comman/sizes.dart';
import 'package:grabber/utils/constants/comman/colors.dart';
import '../../Presentation/Favourite/favourite.dart';
import '../../Presentation/Home/homepage.dart';
import '../../Presentation/menu.dart';
import '../../Presentation/Screen/profile/profile.dart';
import '../../Presentation/Search/search.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final PageController _pageViewController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = GHelperFunction.screenWidth();
    final iconsize = screenWidth * .065;
    final navbarHeight = screenWidth * .23;
    final fontsize = screenWidth * .03;

    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageViewController,
        onPageChanged: (index) {
          setState(() => _selectedIndex = index);
        },
        children: const [
          Home(),
          Favourite(),
          Search(),
          Profile(),
          Menu(),
        ],
      ),
      bottomNavigationBar: Container(
        height: navbarHeight,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Gcolour.borderColor, width: 1),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          iconSize: iconsize,
          selectedLabelStyle: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: fontsize,
            color: Gcolour.green,
          ),
          unselectedLabelStyle: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: fontsize,


          ),
          selectedItemColor: Gcolour.green,
          unselectedItemColor: Theme.of(context).iconTheme.color,

          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() => _selectedIndex = index);
            _pageViewController.jumpToPage(index);
          },
          items: [
            const BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home_outlined),
                  SizedBox(height: GSizes.xs),
                ],
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(height: GSizes.xs),
                ],
              ),
              label: 'Favourite',
            ),
            const BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.search_rounded),
                  SizedBox(height: GSizes.xs),
                ],
              ),
              label: 'Search',
            ),
            const BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person_outline),
                  SizedBox(height: GSizes.xs),
                ],
              ),
              label: 'Profile',
            ),
            const BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.menu),
                  SizedBox(height: GSizes.xs),
                ],
              ),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}
