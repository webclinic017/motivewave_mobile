
import 'dart:convert';

import 'package:intl/intl.dart';

void main()
{
  var last = LastData();
  last = null;
  double bid = last?.bid;


  //var ts = "2021-06-13T20:24:11";
  //var base = DateFormat("yyyy-MM-dd'T'HH:mm:ss").parse(ts, true);

  //1623615851000
  print("The value of bid is $bid");
}


class LastData
{
  double price, bid, bidSize, ask, askSize, volume;
  int ts;
}
