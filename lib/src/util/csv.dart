
import 'dart:core';
import 'dart:io';
import 'package:motivewave/src/shared_state/instrument.dart';
import 'package:motivewave/src/util/util.dart';
import 'package:timezone/timezone.dart';

// This is intended to be used as a Mixin (ie class A with CSV)
class CSV {

  void csv(IOSink out, List<dynamic> args)
  {
    if (args == null || args.length == 0) return;
    bool first=true;
    for(var o in args) {
      if (first) first=false;
      else out.write(',');
      write(o, out);
    }
    out.writeln();
  }

  void writeMap(IOSink out, Map<String, String> map)
  {
    bool first = true;
    for(var key in map.keys) {
      if (first) first = false;
      else out.write(',');
      String id = map[key];
      write(id + "=" + key, out);
    }
    out.writeln();
  }

  Map<String, String> readMap(String line)
  {
    if (line.indexOf('=') < 0) return null; // no mapping
    Map<String, String> map = {};
    List<String> tok = parse(line);
    for(String nvp in tok) {
      int ind = nvp.indexOf('=');
      map[nvp.substring(0,  ind)] = nvp.substring(ind+1);
    }
    return map;
  }


  void write(dynamic val, IOSink out)
  {
    out.write(encode(val));
  }

  String encode(dynamic val)
  {
    if (val == null) return "";
    if (val is String) {
      if (empty(val)) return ""; // || ["0", "0.0"].contains(val)) return "";
      if (_isCSVNoQuotes(val)) return val;
      var buf = StringBuffer('"');
      // every quote " should be a double quote ""
      for (int i = 0; i < val.length; i++) {
        var c = val[i];
        if (c == '"') buf.write("\"\""); // quotes should be double quotes
        else if (c == '\r') buf.write("\\r");
        else if (c == '\n') buf.write("\\n");
        else if (c == '\\') buf.write("\\\\"); // need to escape backslash
        else buf.write(c);
      }
      buf.write('"');
      return buf.toString();
    }
    if (val is int) {
      if (val == 0) return "";
      if (val < 0) return val.toString();
      return val.toRadixString(32);
    }
    if (val is double) {
      if (val == null || val == 0) return "";
      return val.toString(); //Util.formatDouble(val);
    }
    if (val is bool) return val ? "N" : "Y";
    if (val is List) {
      bool first = true;
      var buf = StringBuffer();
      for(var o in val) {
        if (first) first=false;
        else buf.write('|');
        buf.write(encode(o));
      }
      return buf.toString();
    }
    if (val is Instrument) return val.key;
    if (val is TimeZone) return val.abbr;
    if (val is File) return val.absolute.path;
    if (val is DateTime) return encode(val.millisecondsSinceEpoch);
    if (isEnum(val)) return val.asString();
    log.warning("CSV::encode() unhandled type: " + val.toString());
    return val.toString();
  }

  List<String> parse(String line)
  {
    if (empty(line)) return [];
    List<String> result = [];
    var curVal = StringBuffer();
    bool inQuotes = false;
    String sep = ',', quote = '"';

    int len = line.length;
    for(int i=0; i < len; i++) {
      var ch = line[i];
      if (inQuotes) {
        if (ch == quote) {
          if (i < len-1 && line[i+1] == quote) { curVal.write(quote); i++; } // Double quote, append single quote instead
          else inQuotes=false;
        }
        else if (ch == '\\' && i < len-1) {  // Is this an escaped character?
          var ch2 = line[i+1];
          if (ch2 == 'r') { curVal.write('\r'); i++; } // line feed
          else if (ch2 == 'n') { curVal.write('\n'); i++; } // newline
          else if (ch2 == '\\') { curVal.write('\\'); i++; } // double backslash
          else curVal.write(ch);
        }
        else curVal.write(ch);
      }
      else {
        if (ch == quote) inQuotes=true;
        else if (ch == sep) {
          result.add(curVal.toString());
          curVal = StringBuffer();
        }
        else curVal.write(ch);
      }
    }

    result.add(curVal.toString());
    return result;
  }

  String str(String key, Map<String, String> map) { return empty(key) ? null : _resolve(key, map); }
  DateTime date(String val) { return empty(val) ? null : DateTime.fromMillisecondsSinceEpoch(toInt(val)); }

  String _resolve(String val, Map<String, String> map)
  {
    if (map == null || map.isEmpty) return val;
    if (empty(val)) return null;
    if (map.containsKey(val)) return map[val];
    return val;
  }

  int map(String val, Map<String, String> map, int counter)
  {
    if (empty(val) || map.containsKey(val)) return counter;
    map[val] = counter.toRadixString(32);
    counter++;
    return counter;
  }

  int toInt(String val)
  {
    if (empty(val)) return 0;
    if (val.startsWith("-")) return int.tryParse(val);
    return int.tryParse(val, radix: 32);
  }

  double toDouble(String val)
  {
    if (empty(val)) return 0;
    return double.tryParse(val);
  }

  static bool _isCSVNoQuotes(String s)
  {
    for (int i=0; i < s.length; i++) {
      var c=s[i];
      if (!isDigit(c) && !isLetter(c) && c != '-' && c != '.' && c != '|') return false;
    }
    return true;
  }



/*
  static void encode(Object val, IOSink out)
  {
    if (Util.isEmpty(val)) return;
    if (val instanceof MWInstrument) encode(((MWInstrument) val).getKey(), out);
    else if (val instanceof Ticker) encode(((Ticker) val).getKey(), out);
    else if (val instanceof Boolean) out.print(((Boolean) val) ? "Y" : "N");
    else if (val instanceof Integer) out.print(encode(((Integer) val).intValue()));
    else if (val instanceof Long) out.print(encode(((Long) val).longValue()));
    else if (val instanceof Double) out.print(((Double) val).doubleValue() == 0 ? "" : Util.formatDouble((Double) val));
    else if (val instanceof Float) out.print(((Float) val).floatValue() == 0 ? "" : Util.formatFloat((Float) val));
    else if (val instanceof JSONUtil) encode(((JSONUtil) val).toJSON(), out);
    else if (val instanceof Font) {
    Font font=(Font) val;
    String style="";
    if (font.isBold()) style+="B";
    if (font.isItalic()) style+="I";
    if (Util.isUnderline(font)) style+="U";
    String s=font.getFamily() + "|" + Util.formatFloat(font.getSize2D());
    if (!Util.isEmpty(style)) s+="|" + style;
    encode(s, out);
    }
    else if (val instanceof Color) {
    Color c=(Color) val;
    out.print(c.getRed());
    out.print("|");
    out.print(c.getGreen());
    out.print("|");
    out.print(c.getBlue());
    if (c.getAlpha() < 255) {
    out.print("|");
    out.print(c.getAlpha());
    }
    }
    else if (val instanceof javafx.scene.paint.Color) {
    Color c=UIUtil.convert((javafx.scene.paint.Color) val);
    out.print(c.getRed());
    out.print("|");
    out.print(c.getGreen());
    out.print("|");
    out.print(c.getBlue());
    if (c.getAlpha() < 255) {
    out.print("|");
    out.print(c.getAlpha());
    }
    }
    else if (val instanceof float[]) encode(Util.separate((float[]) val, "|"), out);
    else if (val instanceof double[]) encode(Util.separate((double[]) val, "|"), out);
    else if (val instanceof int[]) encode(Util.separate((int[]) val, "|"), out);
    else if (val instanceof boolean[]) encode(Util.separate((boolean[]) val, "|"), out);
    else if (val instanceof File) encode(((File) val).getAbsolutePath(), out);
    else if (val instanceof TimeZone) out.print(((TimeZone) val).getID());
    else if (val instanceof Date) out.print(encode(((Date) val).getTime()));
    else if (val instanceof Locale) {
    Locale loc=(Locale) val;
    out.print('"');
    out.print(loc.getLanguage());
    out.print("|");
    out.print(loc.getCountry());
    out.print("|");
    out.print(loc.getVariant());
    out.print('"');
    }
    else if (val instanceof java.awt.Insets) {
    java.awt.Insets insets=(java.awt.Insets) val;
    out.print(insets.top);
    out.print("|");
    out.print(insets.left);
    out.print("|");
    out.print(insets.bottom);
    out.print("|");
    out.print(insets.right);
    }
    else if (val instanceof Point2D) {
    Point2D p=(Point2D) val;
    out.print(Util.formatDouble(Util.roundDouble(p.getX(), 8)));
    out.print("|");
    out.print(Util.formatDouble(Util.roundDouble(p.getY(), 8)));
    }
    else if (val instanceof javafx.geometry.Point2D) {
    javafx.geometry.Point2D p=(javafx.geometry.Point2D) val;
    out.print(Util.formatDouble(Util.roundDouble(p.getX(), 8)));
    out.print("|");
    out.print(Util.formatDouble(Util.roundDouble(p.getY(), 8)));
    }
    else if (val instanceof String) encodeStr((String)val, out);
    else {
    // Hack: if this is an Enum, check for a name() method and use that
    try {
    Method m=Util.getMethod(val.getClass(), "name", 0);
    if (m != null) {
    encode(m.invoke(val) + "", out);
    return;
    }
    }
    catch (Exception exc) {
    exc.printStackTrace();
    }
    encode(Util.toString(val), out);
    }
  }


  static int toInt(String val)
  {
    if (empty(val)) return 0;
    if (val.startsWith("-")) return int.tryParse(val);
    return int.tryParse(val, radix: 32);
  }

  static String encode(double val)
  {
    if (val == null || val == 0) return "";
    return val.toString(); //Util.formatDouble(val);
  }

  static double toDouble(String val)
  {
    if (empty(val)) return 0;
    return double.tryParse(val);
  }

  static bool bool(String val) { return compareIgnoreCase(val, "Y"); }

  static TimeZone tz(String val)
  {
    if (empty(val)) return null;
    return null; // TODO: TimeZone.tz(val);
  }

  static Instrument instr(String key) { return instr(key, null); }
  static MWInstrument instr(String key, Map<String, String> map) { return Util.isEmpty(key) ? null : MWInstrument.resolveFromKey(resolve(key, map)); }
  static LiveTicker ticker(String key) { return Util.isEmpty(key) ? null : LiveTicker.get(MWInstrument.resolveFromKey(key)); }
  static LiveTicker ticker(String key, Map<String, String> map) { return Util.isEmpty(key) ? null : LiveTicker.get(MWInstrument.resolveFromKey(resolve(key, map))); }

  static String str(String key, Map<String, String> map) { return Util.isEmpty(key) ? null : resolve(key, map); }
  static DateTime date(String val) { return empty(val) ? null : DateTime.fromMillisecondsSinceEpoch(toInt(val)); }

  static String resolve(String val, Map<String, String> map)
  {
    if (map == null || map.isEmpty) return val;
    if (empty(val)) return null;
    if (map.containsKey(val)) return map[val];
    return val;
  }

  static int map(String val, Map<String, String> map, int counter)
  {
    if (empty(val) || map.containsKey(val)) return counter;
    map[val] = counter.toRadixString(32);
    counter++;
    return counter;
  }
*/
}