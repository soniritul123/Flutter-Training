import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection
{
  get database => null;

  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path  = join(directory.path, "mydb");
    var database = await openDatabase(path, version: 1, onCreate: createDatabase);
    return database;
  }

  Future<void> createDatabase (Database database, int version) async {

    String? query = "CREATE TABLE student ( id integer primary key autoincrement, name varchar(20), subject varchar(20), city varchar(20))";

    await database.execute(query);
  }
  }