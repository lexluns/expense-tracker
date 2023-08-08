import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum SavingsCategory {
  income,
  savings,
}

class Savings {
  Savings(
      {required this.amount,
      required this.note,
      required this.date,
      required this.savingsCategory})
      : id = uuid.v4();

  final String id;
  final double amount;
  final String note;
  final DateFormat date;
  final SavingsCategory savingsCategory;
}
