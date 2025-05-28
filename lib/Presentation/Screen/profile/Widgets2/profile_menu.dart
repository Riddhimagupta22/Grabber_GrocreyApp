import 'package:flutter/material.dart';

import '../../../../utils/Helpers/helper.dart';
import '../../../../utils/constants/comman/colors.dart';
import '../../../../utils/constants/comman/sizes.dart';

class GProfileMenu extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final Color? bgcolor;
  final Color? iconcolor;
  final IconData icon;

  const GProfileMenu(
      {super.key,
      required this.title,
      this.onPressed,
      required this.icon,
      this.bgcolor,
      this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSizes.spaceBtw / 1.5),
        child: Row(
          children: [
            Expanded(
              flex: 0,
              child: CircleAvatar(
                radius: 15,
                backgroundColor: bgcolor ??
                    (GHelperFunction.isDarkMode(context)
                        ? Gcolour.cbg
                        : Gcolour.CBG),
                child: Icon(
                  icon,
                  color: iconcolor ??
                      (GHelperFunction.isDarkMode(context)
                          ? Gcolour.iconcolor2
                          : Gcolour.iconcolor),
                  size: 17,
                ),
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            Expanded(
              flex: 6,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Expanded(child: Icon(Icons.keyboard_arrow_right_rounded, size: 29))
          ],
        ),
      ),
    );
  }
}
