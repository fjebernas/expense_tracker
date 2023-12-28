import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

final categoryIcons = {
  Category.food: Icons.food_bank,
  Category.leisure: Icons.sports,
  Category.travel: Icons.airplane_ticket,
  Category.work: Icons.money,
};

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  const ExpenseItem({super.key, required this.expense});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              expense.title,
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ ${expense.amount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    color: Colors.green,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      categoryIcons[expense.category],
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      expense.formattedDate,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
