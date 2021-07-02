
class Currency
{
  String symbol, description;
  Currency(this.symbol, this.description);

  static final List<Currency> all = List.unmodifiable([
    Currency("USD", "US Dollar"), Currency("CAD", "Canadian Dollar"), Currency("AUD", "Australian Dollar"),
    Currency("EUR", "European Union Euro"), Currency("GBP", "Great Britain (UK) Pound"), Currency("HKD", "Hong Kong Dollar"),
    Currency("NZD", "Zealand Dollar"), Currency("KRW", "Korean Won"), Currency("NOK", "Norwegian Krone"),
    Currency("SEK", "Sweden Kronor"), Currency("CHF", "Switzerland Franc"), Currency("JPY", "Japanese Yen"),
    Currency("CNY", "Chinese Yuan"), Currency("BSD", "Bahamas Dollar"), Currency("BBD", "Barbados Dollar"),
    Currency("ARS", "Argentina Pesos"), Currency("AWG", "Aruba Dollar"), Currency("BMD", "Bermuda Dollar"),
    Currency("BRL", "Brazil Reais"), Currency("KYD", "Cayman Islands Dollar"), Currency("CLP", "Chile Pesos"),
    Currency("CRC", "Costa Rica Colon"), Currency("COP", "Columbia Pesos"), Currency("HRK", "Croatia Kruna"),
    Currency("CZK", "Czech Republic, Koruny"), Currency("DKK", "Denmark Kroner"), Currency("DOP", "Dominican Republic, Pesos"),
    Currency("EGP", "Egypt Pounds"), Currency("HUF", "Hungary Forint"), Currency("ISK", "Iceland Kronur"),
    Currency("INR", "India Rupees"), Currency("ILS", "Israel Shekels"), Currency("JMD", "Jamaica Dollars"),
    Currency("MXN", "Mexico Pesos"), Currency("RUB", "Russia Rubles"), Currency("SGD", "Singapore Dollars"),
    Currency("TWD", "Taiwan Dollars"), Currency("TRY", "Turkish Liras"), Currency("XAG", "Silver Ounce"),
    Currency("XAU", "Gold Ounce"), Currency("ZAR", "South African Rand")
  ]);
}

