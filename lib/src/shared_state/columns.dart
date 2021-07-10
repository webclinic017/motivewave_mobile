
// Encapsulates static information on a column that is displayed in a table

import 'package:flutter/material.dart';

class ColumnInfo {
  final Alignment align;
  final String property, label;
  final double width;
  final bool sortable;

  ColumnInfo(this.property, this.label, this.width, this.sortable, this.align);

  TextAlign get textAlign {
    if (align == Alignment.center || align == Alignment.bottomCenter  || align == Alignment.topCenter) return TextAlign.center;
    if (align == Alignment.topRight || align == Alignment.centerRight || align == Alignment.bottomRight) return TextAlign.right;

    return TextAlign.left;
  }
}

class TickerColumns {
  static final SYMBOL = ColumnInfo("symbol", "Instrument", 100, true, Alignment.centerLeft);
  static final BID = ColumnInfo("bid", "Bid", 100, true, Alignment.centerRight);
  static final ASK = ColumnInfo("ask", "Ask", 100, true, Alignment.centerRight);
  static final LAST = ColumnInfo("last", "Last", 100, true, Alignment.centerRight);
  static final CHANGE = ColumnInfo("change", "Change", 100, true, Alignment.centerRight);
  static final CHANGE_PER = ColumnInfo("changePer", "Change %", 100, true, Alignment.centerRight);
  static final HIGH = ColumnInfo("high", "High", 100, true, Alignment.centerRight);
  static final LOW = ColumnInfo("low", "Low", 100, true, Alignment.centerRight);
  static final OPEN = ColumnInfo("open", "Open", 100, true, Alignment.centerRight);
  static final PREV_CLOSE = ColumnInfo("prevClose", "Close", 100, true, Alignment.centerRight);
  static final SETTLE = ColumnInfo("settle", "Settle", 100, true, Alignment.centerRight);
  static final DAY_VOLUME = ColumnInfo("dayVolume", "Volume", 100, true, Alignment.centerRight);
  static final HIGH52 = ColumnInfo("high52", "High 52 Week", 100, true, Alignment.centerRight);
  static final LOW52 = ColumnInfo("low52", "Low 52 Week", 100, true, Alignment.centerRight);

  // Stocks
  static final MARKET_CAP = ColumnInfo("marketCap", "Market Cap", 100, true, Alignment.centerLeft);
  static final NET_ASSET = ColumnInfo("netAssetValue", "Net Asset Value", 100, true, Alignment.centerLeft);
  static final PE = ColumnInfo("pe", "P/E", 100, true, Alignment.centerLeft);
  static final DIV_YIELD = ColumnInfo("dividendYield", "Div Yield", 100, true, Alignment.centerLeft);
  static final DIV_DATE = ColumnInfo("dividendDate", "Div Date", 100, true, Alignment.centerLeft);

  // Futures
  static final OPEN_INTEREST = ColumnInfo("openInterest", "Open Int", 100, true, Alignment.centerLeft);

  static final ALL = <ColumnInfo>[SYMBOL, BID, ASK, LAST, CHANGE, CHANGE_PER, HIGH, LOW, OPEN, PREV_CLOSE, SETTLE, DAY_VOLUME, HIGH52, LOW52, MARKET_CAP, NET_ASSET, PE, DIV_YIELD, DIV_DATE, OPEN_INTEREST];
  static final CQG_ALL = <ColumnInfo>[SYMBOL, BID, ASK, LAST, CHANGE, CHANGE_PER, HIGH, LOW, OPEN, PREV_CLOSE, SETTLE, DAY_VOLUME, HIGH52, LOW52, OPEN_INTEREST];
  static final CQG_DEF = <ColumnInfo>[SYMBOL, LAST, CHANGE, CHANGE_PER, HIGH, LOW];

  static ColumnInfo? find(String prop)
  {
    for(var col in ALL) {
      if (col.property == prop) return col;
    }
    return null;
  }

  static List<String> get defaults {
    var cols = <String>[];
    for(var col in CQG_DEF) cols.add(col.property);
    return cols;
  }



}