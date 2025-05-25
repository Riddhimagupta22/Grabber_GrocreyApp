import 'package:flutter/material.dart';

class GSectionHeading extends StatelessWidget {
  final Color? textColor;
  final bool showActionButton;
  final String title, buttontitle;
  final void Function()? onPressed;
  const GSectionHeading(
      {super.key,
      this.textColor,
      required this.showActionButton,
      required this.title,
   this.buttontitle = 'View All',
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
      maxLines: 1,
      overflow: TextOverflow.ellipsis),
      if(showActionButton) TextButton(onPressed: onPressed, child: Text(buttontitle))
    ],);
  }
}
