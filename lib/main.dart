import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';

final kLightColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: const Color.fromARGB(255, 0, 87, 187),
);

final kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 0, 87, 187),
);

const kCardTheme = CardTheme(
  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
);

final kElevatedButtonTheme = ElevatedButton.styleFrom(
  backgroundColor: kDarkColorScheme.primaryContainer,
  foregroundColor: kDarkColorScheme.onPrimaryContainer,
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: kCardTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: kElevatedButtonTheme,
        ),
      ),
      theme: ThemeData().copyWith(
        colorScheme: kLightColorScheme,
        cardTheme: kCardTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: kElevatedButtonTheme,
        ),
      ),
      home: const Expenses(),
    ),
  );
}
