class Currency {
  ///The currency code
  final String code;

  ///The currency name in English
  final String name;

  ///The currency symbol
  final String symbol;

  ///The currency flag code
  ///
  /// To get flag unicode(Emoji) use [CurrencyUtils.currencyToEmoji]
  final String? flag;

  ///The currency number
  final int number;

  ///The country alpha2Code
  final String alpha2Code;

  ///The currency decimal digits
  final int decimalDigits;

  ///The currency plural name in English
  final String namePlural;

  ///The decimal separator
  final String decimalSeparator;

  ///The thousands separator
  final String thousandsSeparator;

  ///True if symbol is on the Left of the amount
  final bool symbolOnLeft;

  ///True if symbol has space with amount
  final bool spaceBetweenAmountAndSymbol;

  bool get isFlagImage => flag?.endsWith('.png') ?? false;

  Currency({
    required this.code,
    required this.name,
    required this.symbol,
    required this.flag,
    required this.number,
    required this.alpha2Code,
    required this.decimalDigits,
    required this.namePlural,
    required this.symbolOnLeft,
    required this.decimalSeparator,
    required this.thousandsSeparator,
    required this.spaceBetweenAmountAndSymbol,
  });

  Currency.from({required Map<String, dynamic> json})
      : code = json['code'],
        name = json['name'],
        symbol = json['symbol'],
        number = json['number'],
        alpha2Code = json['alpha_2_code'],
        flag = json['flag'],
        decimalDigits = json['decimal_digits'],
        namePlural = json['name_plural'],
        symbolOnLeft = json['symbol_on_left'],
        decimalSeparator = json['decimal_separator'],
        thousandsSeparator = json['thousands_separator'],
        spaceBetweenAmountAndSymbol = json['space_between_amount_and_symbol'];

  Map<String, dynamic> toJson() => {
        'code': code,
        'name': name,
        'symbol': symbol,
        'number': number,
        'alpha_2_code': alpha2Code,
        'flag': flag,
        'decimal_digits': decimalDigits,
        'name_plural': namePlural,
        'symbol_on_left': symbolOnLeft,
        'decimal_separator': decimalSeparator,
        'thousands_separator': thousandsSeparator,
        'space_between_amount_and_symbol': spaceBetweenAmountAndSymbol,
      };

  Currency copyWith({
    String? code,
    String? name,
    String? symbol,
    String? flag,
    int? number,
    String? alpha2Code,
    int? decimalDigits,
    String? namePlural,
    bool? symbolOnLeft,
    String? decimalSeparator,
    String? thousandsSeparator,
    bool? spaceBetweenAmountAndSymbol,
  }) {
    return Currency(
      code: code ?? this.code,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      flag: flag ?? this.flag,
      number: number ?? this.number,
      alpha2Code: alpha2Code ?? this.alpha2Code,
      decimalDigits: decimalDigits ?? this.decimalDigits,
      namePlural: namePlural ?? this.namePlural,
      symbolOnLeft: symbolOnLeft ?? this.symbolOnLeft,
      decimalSeparator: decimalSeparator ?? this.decimalSeparator,
      thousandsSeparator: thousandsSeparator ?? this.thousandsSeparator,
      spaceBetweenAmountAndSymbol: spaceBetweenAmountAndSymbol ?? this.spaceBetweenAmountAndSymbol,
    );
  }
}
