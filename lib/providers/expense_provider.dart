import 'package:flutter/material.dart';
import '../models/expense_model.dart';
import '../services/hive_service.dart';

class ExpenseProvider with ChangeNotifier {
  final HiveService _hiveService;
  List<ExpenseModel> _expenses = [];

  ExpenseProvider(this._hiveService) {
    _loadExpenses();
  }

  List<ExpenseModel> get expenses => _expenses;

  double get totalExpenses {
    return _expenses.fold(0.0, (sum, item) => sum + item.amount);
  }

  Future<void> _loadExpenses() async {
    _expenses = _hiveService.getExpenses();
    // Sort by date descending (newest first)
    _expenses.sort((a, b) => b.date.compareTo(a.date));
    notifyListeners();
  }

  Future<void> addExpense(ExpenseModel expense) async {
    await _hiveService.addExpense(expense);
    await _loadExpenses(); // Reload to keep sorted order
  }

  Future<void> deleteExpense(String id) async {
    await _hiveService.deleteExpense(id);
    await _loadExpenses();
  }
}
