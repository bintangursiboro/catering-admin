import 'package:flutter_money_formatter/flutter_money_formatter.dart';

FlutterMoneyFormatter formatStringToCurrency(String number) {
  MoneyFormatterSettings settings = MoneyFormatterSettings(
    symbol: 'Rp.',
    thousandSeparator: '.',
    symbolAndNumberSeparator: ' ',
    decimalSeparator: ',',
    fractionDigits: 0,
  );
  FlutterMoneyFormatter moneyFormatter = FlutterMoneyFormatter(
    amount: double.parse(number),
    settings: settings,
  );
  print('Money Formatter: ${moneyFormatter.output.symbolOnLeft}');
  return moneyFormatter;
}
