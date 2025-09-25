import 'package:intl/intl.dart';

mixin DateMixin {
  String parseDate(DateTime value) => DateFormat("dd/MM/yyyy 'às' HH:mm:ss").format(value);
}
