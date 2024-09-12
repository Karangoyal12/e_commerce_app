import 'package:flutter/material.dart';

import '../../../utils/constants/enums.dart';

class ABrandTitleText extends StatelessWidget {
  const ABrandTitleText({
    super.key,
    required this.title,
    this.textColor,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final Color? textColor;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
          : brandTextSize == TextSizes.medium
          ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
          : brandTextSize == TextSizes.large
          ? Theme.of(context)
          .textTheme
          .titleLarge!
          .apply(color: textColor)
          : Theme.of(context)
          .textTheme
          .bodyMedium!
          .apply(color: textColor),
    );
  }
}
