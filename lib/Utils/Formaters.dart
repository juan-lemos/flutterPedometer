import 'package:intl/intl.dart';

String formatNumber(int number) {
  var f = new NumberFormat("#,###", "en_US");
  return f.format(number);
}
