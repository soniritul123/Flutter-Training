import 'package:myproject/Screen/Offline_Database/DBhelper.dart';
import 'package:sqflite/sqflite.dart';

class Repository{
late DatabaseConnection _databaseConnection; //object creation of DBhelper

Repository() // Constructor
{
  _databaseConnection = DatabaseConnection();
}
static Database? _database;

Future<Database?> get mydatabase async {
  if(_database != null)
  {
    return _database;
  }
  else{
    _database = await _databaseConnection.setDatabase();
    return _database;
  }
}

// insert Data
insertData(tablename, data) async{
  var con = await mydatabase;
  return await con!.insert(tablename, data);
}

// select all data from table
getData(table) async{
var con = await mydatabase;
return await con!.query(table);
}

// retrive specific data from table
readSingleData(table, id) async{
  var con = await mydatabase;
  return await con!.query(table, where: "id = ?", whereArgs: id);
}

// update Data
updateData(tablename, data) async{
  var con = await mydatabase;
  return await con!.query(tablename, where: "id = ?", whereArgs: [data["id"]]);
}

// Detele Data
deleteData(table, data) async{
  var con = await mydatabase;
  return await con!.query(table, where: "id = ?", whereArgs: [data["id"]]);
}

}

