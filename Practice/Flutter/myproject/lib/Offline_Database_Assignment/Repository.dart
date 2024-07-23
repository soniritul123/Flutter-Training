
//import 'package:flutter/material.dart';
import 'package:myproject/Offline_Database_Assignment/Database_Connection.dart';
import 'package:sqflite/sqflite.dart';

class Repository
{
  //constructor

  late DataBaseConnection _dataBaseConnection;
  Repository()
  {
    _dataBaseConnection = DataBaseConnection();  //initialization
  }

  static Database? _database;  //creating object of database

  Future<Database> get myDatabase async 
  {
    if(_database != null)
    {
      return _database!;
    }
    else
    {
      _database = await _dataBaseConnection.setDataBase();
      return _database!;
    }
  } 

  //insert into table

  insertRecord(table, data) async
  {
    var con = await myDatabase;
    return await con.insert(table, data);
  }

  //fetch all data from table
  fetchRecord(table) async
  {
    var con = await myDatabase;
    return await con.query(table);
  }

  //fetch single record from table
  fetchsingleRecord(table, data) async
  {
    var con = await myDatabase;
    return await con.query(table, where: "id = ?", whereArgs: [data["id"]]);
  }

  //delete single record from table
  deleteRecord(table, data) async
  {
    var con = await myDatabase;
    return await con.delete(table,where: "id = ?",whereArgs: [data["id"]]);
  }

  //update
  updateRecord(table, data) async
  {
    var con = await myDatabase;
    return await con.update(table, data ,where: "id = ?",whereArgs: [data["id"]]);
  }
}