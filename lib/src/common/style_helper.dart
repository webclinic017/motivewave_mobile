import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:motivewave/src/common/colors.dart';
import 'package:motivewave/src/util/observable.dart';
import 'package:motivewave/src/util/util.dart';


TextStyle colorPrice(TextStyle style, Observable<double> property)
{
  if (now() - property.lastUpdate > 5000) return style;
  double diff = property.state - property.prevValue;
  if (diff.abs() < 0.000001) return style;
  return style.apply(color: diff > 0 ? kUpColor : kDownColor);
}

TextStyle colorPosNeg(TextStyle style, Observable<double> property)
{
  if (property.state.abs() < 0.000001) return style;
  return style.apply(color: property.state > 0 ? kUpColor : kDownColor);
}

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
