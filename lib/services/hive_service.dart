import 'package:hive_flutter/hive_flutter.dart';
import '../models/expense_model.dart';

class HiveService {
  static const String boxName = 'expenses_box';
  Box<ExpenseModel>? _box;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ExpenseModelAdapter());
    _box = await Hive.openBox<ExpenseModel>(boxName);
  }

  Box<ExpenseModel> get box {
    if (_box == null) {
      throw Exception('Box not initialized. Call init() first.');
    }
    return _box!;
  }

  Future<void> addExpense(ExpenseModel expense) async {
    await box.put(expense.id, expense);
  }

  List<ExpenseModel> getExpenses() {
    return box.values.toList();
  }

  Future<void> deleteExpense(String id) async {
    await box.delete(id);
  }
}
