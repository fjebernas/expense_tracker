import 'package:expense_tracker/models/expense.dart';

class ExpenseBucket {
  final Category category;
  final List<Expense> expenses;

  ExpenseBucket({required this.category, required this.expenses});

  ExpenseBucket.forCategory(
      {required this.category, required List<Expense> expenses})
      : expenses =
            expenses.where((element) => element.category == category).toList();

  double get totalExpenses {
    return expenses
        .map((e) => e.amount)
        .fold(0, (previousValue, element) => previousValue + element);
  }
}
