import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/task_model.dart';

class DatabaseHelper {
  static Database? db;

  static Future<Database> getDatabase() async {
    if (db != null) return db!;
    String path = join(await getDatabasesPath(), 'taskmate.db');
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE tasks(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, description TEXT, dueDate TEXT, status TEXT)',
        );
      },
    );
    return db!;
  }

  static Future<int> insertTask(Task task) async {
    final database = await getDatabase();
    return await database.insert('tasks', task.toMap());
  }

  static Future<List<Task>> getAllTasks() async {
    final database = await getDatabase();
    final List<Map<String, dynamic>> maps = await database.query('tasks');
    return List.generate(maps.length, (i) => Task.fromMap(maps[i]));
  }

  static Future<int> updateTask(Task task) async {
    final database = await getDatabase();
    return await database.update(
      'tasks',
      task.toMap(),
      where: 'id = ?',
      whereArgs: [task.id],
    );
  }

  static Future<int> deleteTask(int id) async {
    final database = await getDatabase();
    return await database.delete('tasks', where: 'id = ?', whereArgs: [id]);
  }
}
