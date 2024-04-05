// flutter pub add sqflite
// flutter pub add path_provider
// flutter pub add path

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection
{
  get database => null;

  Future<Database> setDatabase() async {
    // C://Flutter/Myproject
    var directory = await getApplicationDocumentsDirectory();
    // C://Flutter/Myproject , "mydatabase"
    // C://Flutter/Myproject/mydatabase
    var path  = join(directory.path, "mydatabase");
    var database = await openDatabase(path, version: 1, onCreate: createTable);
    return database;
  }

  Future<void> createTable (Database database, int version) async {

    String? sql = "CREATE TABLE Student ( id integer primary key AUTOINCREAMENT, name text, subject text )";

    await database.execute(sql);
  }
  }