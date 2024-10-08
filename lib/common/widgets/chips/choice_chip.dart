import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class AChoiceChip extends StatelessWidget {
  const AChoiceChip({
    super.key, required this.text, required this.selected, this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = AHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? AColors.white : null),
        avatar: isColor ? ACircularContainer(width: 50,height: 50, backgroundColor: AHelperFunctions.getColor(text)!) : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ?  const EdgeInsets.all(0) : null,
        padding: isColor ?  const EdgeInsets.all(0) : null,
        // selectedColor: Colors.green,
        backgroundColor: isColor ? AHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
