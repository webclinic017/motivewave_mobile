
// Encapsulates static information on a column that is displayed in a table
import 'package:flutter/material.dart';

class ColumnInfo {
  final Alignment align;
  final String property, label;
  final int width;
  final bool sortable;

  ColumnInfo(this.property, this.label, this.width, this.sortable, this.align);
}

class TickerColumns {
  static final SYMBOL = ColumnInfo("symbol", "Instrument", 100, true, Alignment.centerLeft);
  static final BID = ColumnInfo("bid", "Bid", 100, true, Alignment.centerLeft);
  static final ASK = ColumnInfo("ask", "Ask", 100, true, Alignment.centerLeft);
  static final LAST = ColumnInfo("last", "Last", 100, true, Alignment.centerLeft);
  static final CHANGE = ColumnInfo("change", "Change", 100, true, Alignment.centerLeft);
  static final CHANGE_PER = ColumnInfo("changePer", "Change %", 100, true, Alignment.centerLeft);
  static final HIGH = ColumnInfo("high", "High", 100, true, Alignment.centerLeft);
  static final LOW = ColumnInfo("low", "Low", 100, true, Alignment.centerLeft);
  static final OPEN = ColumnInfo("open", "Open", 100, true, Alignment.centerLeft);
  static final PREV_CLOSE = ColumnInfo("prevClose", "Close", 100, true, Alignment.centerLeft);
  static final SETTLE = ColumnInfo("settle", "Settle", 100, true, Alignment.centerLeft);
  static final DAY_VOLUME = ColumnInfo("dayVolume", "Volume", 100, true, Alignment.centerLeft);
  static final HIGH52 = ColumnInfo("high52", "High 52 Week", 100, true, Alignment.centerLeft);
  static final LOW52 = ColumnInfo("low52", "Low 52 Week", 100, true, Alignment.centerLeft);

  // Stocks
  static final MARKET_CAP = ColumnInfo("marketCap", "Market Cap", 100, true, Alignment.centerLeft);
  static final NET_ASSET = ColumnInfo("netAssetValue", "Net Asset Value", 100, true, Alignment.centerLeft);
  static final PE = ColumnInfo("pe", "P/E", 100, true, Alignment.centerLeft);
  static final DIV_YIELD = ColumnInfo("dividendYield", "Div Yield", 100, true, Alignment.centerLeft);
  static final DIV_DATE = ColumnInfo("dividendDate", "Div Date", 100, true, Alignment.centerLeft);

  // Futures
  static final OPEN_INTEREST = ColumnInfo("openInterest", "Open Int", 100, true, Alignment.centerLeft);

  static final CQG_ALL = <ColumnInfo>[SYMBOL, BID, ASK, LAST, CHANGE, CHANGE_PER, HIGH, LOW, OPEN, PREV_CLOSE, SETTLE, DAY_VOLUME, HIGH52, LOW52, OPEN_INTEREST];
  static final CQG_DEF = <ColumnInfo>[SYMBOL, LAST, CHANGE, CHANGE_PER, HIGH, LOW];


}