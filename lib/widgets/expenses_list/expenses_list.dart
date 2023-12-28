import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  final void Function(Expense) deleteExpense;

  const ExpensesList(
      {super.key, required this.expenses, required this.deleteExpense});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //physics: const BouncingScrollPhysics(),
      itemCount: expenses.length,
      itemBuilder: (ctx, idx) {
        return Dismissible(
          background: Card(
            color: Theme.of(context).colorScheme.error.withOpacity(0.5),
            shape: Theme.of(context).cardTheme.shape,
          ),
          key: ValueKey(
            expenses[idx],
          ),
          onDismissed: (direction) {
            deleteExpense(expenses[idx]);
          },
          child: ExpenseItem(
            expense: expenses[idx],
          ),
        );
      },
    );
  }
}
