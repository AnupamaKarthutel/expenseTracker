import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work,investment,rent,emi,recharge,others,shopping,debts,education }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
  Category.investment: Icons.wallet,
  Category.rent: Icons.house_siding_outlined,
  Category.emi: Icons.credit_card_outlined,
  Category.recharge: Icons.receipt_sharp,
  Category.shopping: Icons.shopping_cart_checkout_outlined,
 Category.debts: Icons.wallet_travel_rounded,
 Category.education: Icons.school_sharp,
 Category.others: Icons.book_online,

};

final formatter = DateFormat.yMd();

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }
}

class ExpenseBucket {
  final List<Expense> expenses;
  final Category category;

  ExpenseBucket({required this.expenses, required this.category});

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  double get totalExpense {
    double sum = 0;
    for (final expense in expenses) {
      sum += expense.amount;
    }
    return sum;
  }
}
