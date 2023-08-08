import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  shopping,
  restaurant,
  automobile,
  fuel,
  others,
  rent,
  internet,
  housing,
}

const categoryIcons = {
  Category.shopping: Icons.card_travel,
  Category.housing: Icons.house_rounded,
  Category.restaurant: Icons.food_bank_rounded,
  Category.automobile: Icons.car_rental,
  Category.fuel: Icons.gas_meter_rounded,
  Category.internet: Icons.signal_cellular_alt,
  Category.others: Icons.account_balance_wallet_rounded,
};

class Expense {
  Expense({
    required this.note,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String note;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
