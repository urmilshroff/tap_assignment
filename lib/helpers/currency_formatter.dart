import 'package:intl/intl.dart';

class CurrencyFormatter {
  static String formatToRupee(double value) {
    final formatter =
        NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: 0);
    final formattedString = formatter.format(value);
    return formattedString;
  }

  static String formatInput(String value) {
    final formatter = NumberFormat('#,##,###', 'en_IN');
    final formattedString = formatter.format(double.parse(value)).toString();
    return formattedString;
  }
}
