class Holidays
{
  static bool isWeekendOrHoliday(DateTime cal)
  {
    if (cal.weekday == 6 || cal.weekday == 7) return true;
    switch(cal.month) {
      case 1: return isNewYearsDayObserved(cal) || isMartinLutherKing(cal);
      case 2: return isPresidentsDay(cal);
      case 3: case 4: return isGoodFriday(cal) || isEasterMonday(cal);
      case 5: return isMemorialDay(cal);
      case 7: return isIndependenceDayObserved(cal);
      case 9: return isLaborDay(cal);
      case 11: return isThanksgivingDay(cal);
      case 12: return isChristmasDayObserved(cal) || isNewYearsDayObserved(cal);
    }
    return false;
  }
  static bool isWeekend(DateTime cal) => cal.weekday == 6 || cal.weekday == 7;

  static bool isNewYearsDayObserved(DateTime cal)
  {
    if (cal.month == 1) {
      if (cal.day == 2 && cal.weekday == 1) return true;
      if (cal.day == 1 && !isWeekend(cal)) return true;
      return false;
    }
    // If New Years is on Saturday, then observe on Friday 31
    return cal.month == 12 && cal.day == 31 && cal.weekday == 5;
  }

  static bool isMartinLutherKing(DateTime cal)
  {
    if (cal.month != 1 || cal.weekday != 1 || cal.day <= 14) return false;
    // Third Monday in January
    var d = Duration(days: 7);
    int c = 0;
    do {
      if (cal.weekday == 1) c++;
      cal = cal.subtract(d);
    }
    while(cal.month == 1);
    return c == 3;
  }

  static bool isRobertELeeDay(DateTime cal) => cal.month == 1 && cal.day == 18;

  static bool isGroundhogDay(DateTime cal) => cal.month == 2 && cal.day == 2;

  static bool isAbrahamLincolnsBirthday(DateTime cal) => cal.month == 2 && cal.day == 12;

  static bool isValentinesDay(DateTime cal) => cal.month == 2 && cal.day == 14;

  static bool isSusanBAnthonyDay(DateTime cal) => cal.month == 2 && cal.day == 15;

  static bool isSaintPatricksDay(DateTime cal) => cal.month == 3 && cal.day == 17;

  static bool isPresidentsDay(DateTime cal)
  {
    if (cal.month != 2 || cal.weekday != 1 || cal.day <= 14) return false;
    // Third Monday in February
    var d = Duration(days: 7);
    int c = 0;
    do {
      if (cal.weekday == 1) c++;
      cal = cal.subtract(d);
    }
    while(cal.month == 2);
    return c == 3;
  }

  static bool isCincoDeMayo(DateTime cal) => cal.month == 5 && cal.day == 5;

  static bool isMemorialDay(DateTime cal)
  {
    if (cal.month != 5 || cal.weekday != 1 || cal.day <= 21) return false;
    // Last Monday in May
    var d = Duration(days: 7);
    cal = cal.add(d);
    while(cal.month == 5) {
      if (cal.weekday == 1) return false;
      cal = cal.add(d);
    }
    return true;
  }

  static bool isVictoriaDay(DateTime cal)
  {
    if (cal.month != 5 || cal.weekday != 1 || cal.day >= 25 || cal.day <= 17) return false;
    // Last Monday before May 25
    var d = Duration(days: 1);
    cal = cal.add(d);
    while(cal.day <= 25) {
      if (cal.weekday == 1) return false;
      cal = cal.add(d);
    }
    return true;
  }

  static bool isIndependenceDayObserved(DateTime cal)
  {
    if (cal.month != 7 || isWeekend(cal)) return false;
    if (cal.day == 4) return true;
    if (cal.weekday == 1 && cal.day == 5) return true;
    return cal.weekday == 5 && cal.day == 3;
  }

  static bool isCanadaDayObserved(DateTime cal)
  {
    if (cal.month != 7 || isWeekend(cal)) return false;
    if (cal.day == 1) return true;
    // Observed day always rolls to Monday
    return cal.weekday == 1 && (cal.day == 2 || cal.day == 3);
  }

  static bool isCanadianCivicHoliday(DateTime cal)
  {
    if (cal.month != 8 || cal.weekday != 1 || cal.day > 7) return false;
    // First Monday in August
    var d = Duration(days: 7);
    int c = 0;
    do {
      if (cal.weekday == 1) c++;
      cal = cal.subtract(d);
    }
    while(cal.month == 8);
    return c == 1;
  }

  static bool isFamilyDay(DateTime cal)
  {
    if (cal.month != 2 || cal.weekday != 1 || cal.day <= 14) return false;
    // Third Monday in February
    var d = Duration(days: 7);
    int c = 0;
    do {
      if (cal.weekday == 1) c++;
      cal = cal.subtract(d);
    }
    while(cal.month == 2);
    return c == 3;
  }

  static bool isLaborDay(DateTime cal)
  {
    if (cal.month != 9 || cal.weekday != 1 || cal.day > 7) return false;
    // First Monday in September
    var d = Duration(days: 7);
    int c = 0;
    do {
      if (cal.weekday == 1) c++;
      cal = cal.subtract(d);
    }
    while(cal.month == 9);
    return c == 1;
  }

  static bool isThanksGivingCanada(DateTime cal) => isColumbusDay(cal); // Same as Columbus Day
  static bool isColumbusDay(DateTime cal)
  {
    if (cal.month != 10 || cal.weekday != 1 || cal.day > 14) return false;
    // Second Monday in October
    var d = Duration(days: 7);
    int c = 0;
    do {
      if (cal.weekday == 1) c++;
      cal = cal.subtract(d);
    }
    while(cal.month == 10);
    return c == 2;
  }

  static bool isHalloween(DateTime cal) => cal.month == 10 && cal.day == 31;

  static bool isUSElectionDay(DateTime cal)
  {
    // Make sure its an election year
    int y = cal.year;
    if (y % 4 != 0) return false;

    // First Tuesday in November
    if (cal.month != 11 || cal.weekday != 2 || cal.day > 7) return false;
    return true;
    /*var d = Duration(days: 7);
    int c = 0;
    do {
      if (cal.weekday == 2) {
        c++;
        if (c > 1) return false;
      }
      cal = cal.subtract(d);
    }
    while(cal.month == 11);
    return c == 1; */
  }

  static bool isVeteransDay(DateTime cal) => cal.month == 11 && cal.day == 11;
  static bool isRemembranceDay(DateTime cal) => cal.month == 11 && cal.day == 11;

  static bool isThanksgivingDay(DateTime cal)
  {
    if (cal.month != 11 || cal.weekday != 4 || cal.day <= 21) return false;
    // Fourth Thursday in November
    var d = Duration(days: 7);
    int c = 0;
    do {
      if (cal.weekday == 4) c++;
      cal = cal.subtract(d);
    }
    while(cal.month == 11);
    return c == 4;
  }

  static bool isChristmasDayObserved(DateTime cal)
  {
    if (cal.month != 12 || isWeekend(cal) || cal.day < 24 || cal.day > 26) return false;
    if (cal.day == 25) return true;
    if (cal.weekday == 1 && cal.day == 26) return true;
    return cal.weekday == 5 && cal.day == 24;
  }

  static bool isBoxingDay(DateTime cal)
  {
    if (cal.month != 12 || isWeekend(cal) || cal.day <= 25) return false;
    if (cal.day == 26 && cal.weekday != 1) return true;
    if (cal.day == 27 && cal.weekday == 2) return true;
    return cal.day == 27 && cal.weekday == 1;
  }

  static bool isGoodFriday(DateTime cal) => isEasterSunday(cal.add(Duration(days: 2)));

  static bool isEasterMonday(DateTime cal) => isEasterSunday(cal.subtract(Duration(days: 1)));

  static bool isEasterSunday(DateTime cal)
  {
    if (cal.weekday != 7) return false;
    if (cal.month != 4 && cal.month != 3) return false;
    if (cal.month == 4 && cal.day > 25) return false;
    if (cal.month == 3 && cal.day < 22) return false;
    var md = _calcEasterSunday(cal.year);
    return cal.month == md[0] && cal.day == md[1];
  }

  static List<int> _calcEasterSunday(int year)
  {
    var exist = _easterCache[year];
    if (exist != null) return exist;

    /*
      Calculate Easter Sunday
      Written by Gregory N. Mirsky

      Source: 2nd Edition by Peter Duffett-Smith. It was originally from
      Butcher's Ecclesiastical Calendar, published in 1876. This algorithm has
      also been published in the 1922 book General Astronomy by Spencer Jones;
      in The Journal of the British Astronomical Association (Vol.88, page 91,
      December 1977); and in Astronomical Algorithms (1991) by Jean Meeus.

      This algorithm holds for any year in the Gregorian Calendar, which (of
      course) means years including and after 1583.

      a=year%19 b=year/100 c=year%100 d=b/4 e=b%4 f=(b+8)/25 g=(b-f+1)/3
      h=(19a+b-d-g+15)%30 i=c/4 k=c%4 l=(32+2e+2i-h-k)%7 m=(a+11h+22l)/451
      Easter Month =(h+l-7m+114)/31 [3=March, 4=April] p=(h+l-7m+114)%31 Easter
      Date=p+1 (date in Easter Month)

      Note: Integer truncation is already factored into the calculations. Using
      higher precision variables will cause inaccurate calculations.
     */

    int nA = year % 19;
    int nB = (year / 100).floor();
    int nC = year % 100;
    int nD = (nB / 4).floor();
    int nE = nB % 4;
    int nF = ((nB + 8) / 25).floor();
    int nG = ((nB - nF + 1) / 3).floor();
    int nH = (19 * nA + nB - nD - nG + 15) % 30;
    int nI = (nC / 4).floor();
    int nK = nC % 4;
    int nL = (32 + 2 * nE + 2 * nI - nH - nK) % 7;
    int nM = ((nA + 11 * nH + 22 * nL) / 451).floor();

    // [3=March, 4=April]
    int month = ((nH + nL - 7 * nM + 114) / 31).floor();
    int day = (nH + nL - 7 * nM + 114) % 31 + 1;
    var val = [month, day];
    _easterCache[year] = val;
    return val;
  }

  static Map<int, List<int>> _easterCache = {}; // Keep a cache to improve performance

}
