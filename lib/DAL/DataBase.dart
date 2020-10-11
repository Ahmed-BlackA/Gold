import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'dart:async';
import 'package:path/path.dart';



class DataBase{
  static Database _db;
static String databasename='Userdb.db';
static String dataBaseCreateStatment ="create table User (IdUser INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,Username Text ,Password Text";
//
  static Future<Database> getdb() async {
    if (_db != null) {
  return _db;
  } else {
  _db = await OpenDb();
  return _db;
}
}
static Future<Database>OpenDb()async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, databasename);

    var Userdb = await openDatabase(path,version:1, onCreate: _FirstCreate);

     return Userdb;
}

 static void Restart() async{
    Directory dir = await getApplicationDocumentsDirectory();
    String path =join (dir.path,'Userdb.db');
    File f = new File(path);

    if (!f.existsSync()){
      deleteDatabase(path);
      print('DataBase has Deleted');

    }
}
static void _FirstCreate(Database db,int version)async {
    var CreateUserTableStatment = dataBaseCreateStatment;

    await db.execute(CreateUserTableStatment);
}
static Future<void> CloseDb() async{
    var db =await getdb();
    db.close();
    _db = null;
}
}

