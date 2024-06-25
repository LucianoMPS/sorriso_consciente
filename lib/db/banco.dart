import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Banco {
  static final Banco instance = Banco._();
  static Database? _database;

  Banco._();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'sorriso.db');
    return await openDatabase(path, version: 2, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE historico (
        id INTEGER PRIMARY KEY AUTOINCREMENT
        data DATE,
        pontuacao INTEGER,
        resultado TEXT
      )
    ''');
  }
  
  Future<void> inserirHistorico(Map<String, dynamic> historico) async {
    final db = await database;
    await db.insert('historico', historico);
  }

  Future close() async {
    final db = await database;
    db.close();
  }
}