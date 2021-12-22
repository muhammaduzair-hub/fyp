import 'package:path/path.dart';
import 'package:reflexology/model/organ_model.dart';
import 'package:sqflite/sqflite.dart';

class NotesDatabase {
  static final NotesDatabase instance = NotesDatabase._init();

  static Database _database;

  NotesDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database;

    _database = await _initDB('comments.db');
    return _database;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';

    await db.execute('''
CREATE TABLE $organTable ( 
  ${OrgansFields.id} $idType, 
  ${OrgansFields.title} $textType,
  ${OrgansFields.comments} $textType
  )
''');
  }

  Future<Organ> create(Organ note) async {
    final db = await instance.database;

    // final json = note.toJson();
    // final columns =
    //     '${NoteFields.title}, ${NoteFields.description}, ${NoteFields.time}';
    // final values =
    //     '${json[NoteFields.title]}, ${json[NoteFields.description]}, ${json[NoteFields.time]}';
    // final id = await db
    //     .rawInsert('INSERT INTO table_name ($columns) VALUES ($values)');

    final id = await db.insert(organTable, note.toJson());
    return note.copy(id: id);
  }

  Future<List<Organ>> readNote(String title) async {
    final db = await instance.database;

    final maps = await db.rawQuery('select * from $organTable where ${OrgansFields.title} = ${"'"}${title}${"'"}');//'spleen'

    if (maps.isNotEmpty) {
      return maps.map((e) => Organ.fromJson(e)).toList();
    } else {
      throw Exception('ID $title not found');
    }
  }

  Future<List<Organ>> readAllNotes() async {
    final db = await instance.database;

    final orderBy = '${OrgansFields.id} ASC';
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableNotes ORDER BY $orderBy');

    final result = await db.query(organTable, orderBy: orderBy);

    return result.map((json) => Organ.fromJson(json)).toList();
  }

  // Future<int> update(Note note) async {
  //   final db = await instance.database;

  //   return db.update(
  //     tableNotes,
  //     note.toJson(),
  //     where: '${NoteFields.id} = ?',
  //     whereArgs: [note.id],
  //   );
  // }

  // Future<int> delete(int id) async {
  //   final db = await instance.database;

  //   return await db.delete(
  //     tableNotes,
  //     where: '${NoteFields.id} = ?',
  //     whereArgs: [id],
  //   );
  // }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}