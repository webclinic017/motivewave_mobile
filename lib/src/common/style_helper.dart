import 'package:flutter/cupertino.dart';
import 'package:motivewave/src/common/colors.dart';

TextStyle adjustUpDownColor(TextStyle style, double val)
{
  if (val.abs() < 0.000001) return style;
  return style.apply(color: val > 0 ? kUpColor : kDownColor);
}

Color determineColorBasedOnChange(double change ) {
  return change < 0
      ? kDownColor
      : kUpColor;
}

TextStyle determineTextStyleBasedOnChange(double change ) {
  return change < 0
      ?  kNegativeChange
      : kPositiveChange;
}

const TextStyle kPositiveChange = const TextStyle(
    color: kUpColor,
    fontSize: 16,
    fontWeight: FontWeight.w800
);

const TextStyle kNegativeChange = const TextStyle(
    color: kDownColor,
    fontSize: 16,
    fontWeight: FontWeight.w800
);
