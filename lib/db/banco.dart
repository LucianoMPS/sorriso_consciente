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
    
    bool exists = await databaseExists(path);
    
    if (!exists) {
      // Se não existir, crie o banco de dados
      return await openDatabase(
        path,
        version: 2,
        onCreate: _onCreate,
      );
    } else {
      // Se já existir, abra o banco de dados
      return await openDatabase(
        path,
        version: 2,
      );
    }
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE historico (
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