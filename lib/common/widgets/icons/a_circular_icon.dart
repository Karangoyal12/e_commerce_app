import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class ACircularIcon extends StatelessWidget {
  const ACircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = ASizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : AHelperFunctions.isDarkMode(context)
                ? AColors.black.withOpacity(0.9)
                : AColors.white.withOpacity(0.9),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon,color: color,size: size,)),
    );
  }
}
