import 'package:currency_picker/src/extensions.dart';
import 'package:flutter/material.dart';

import 'currency.dart';

class CurrencyUtils {
  /// Return Flag (Emoji Unicode) of a given currency
  static String currencyToEmoji(Currency currency) {
    final String currencyFlag = currency.flag!;
    // 0x41 is Letter A
    // 0x1F1E6 is Regional Indicator Symbol Letter A
    // Example :
    // firstLetter U => 20 + 0x1F1E6
    // secondLetter S => 18 + 0x1F1E6
    // See: https://en.wikipedia.org/wiki/Regional_Indicator_Symbol
    final int firstLetter = currencyFlag.codeUnitAt(0) - 0x41 + 0x1F1E6;
    final int secondLetter = currencyFlag.codeUnitAt(1) - 0x41 + 0x1F1E6;
    return String.fromCharCode(firstLetter) + String.fromCharCode(secondLetter);
  }

  static Widget currencyFlag(Currency currency, {double? width}) => Image.asset(
        currency.alpha2Code.flagPath,
        package: 'currency_picker',
        width: width ?? 27,
      );
}
