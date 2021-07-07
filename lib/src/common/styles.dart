import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motivewave/src/common/colors.dart';

/// This is the common border radious of all the containers in the app.
const kStandardBorder = BorderRadius.all(Radius.circular(6));

/// This border is slightly more sharp than the standard boder.
const kSharpBorder = BorderRadius.all(Radius.circular(2));

/// This is the common text styling for a subtile.
const kSubtitleStyling = const TextStyle(
    color: kGray,
    fontSize: 24,
    fontWeight: FontWeight.w800
);

/// This is the common text styling for a subtile.
const kCompanyNameHeading = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w800
);

const kTxtPrice = TextStyle(fontWeight: FontWeight.bold);
const kTxtWL = TextStyle();
const kTxtWLTitle = TextStyle(color: Color(0XFFc2c2c2), fontSize: 13, height: 1.5);
const kTxtWLSymbol = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
