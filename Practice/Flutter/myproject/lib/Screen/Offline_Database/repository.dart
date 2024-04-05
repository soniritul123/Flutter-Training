import 'package:myproject/Screen/Offline_Database/Databse_connection.dart';
import 'package:sqflite/sqflite.dart';

class Repository{
late DatabaseConnection _databaseConnection; //object creation of DBhelper

Repository() // Constructor
{
  _databaseConnection = DatabaseConnection();
}

// creating object of database
static Database? _database;

Future<Database?> get mydatabase async {
  // always run on 2nd time
  if(_database != null)
  {
    return _database;
  } 
  // always run at 1st time
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

// getData(table) async{
// var con = await mydatabase;
// return await con!.query(table);
// }

// select all data from table
readData(tablename) async{
var con = await mydatabase;
return await con!.query(tablename);
}

// retrive specific data from table
// fetch all records condition wise
readSingleData(tablename, id) async{
  var con = await mydatabase;
  return await con!.query(tablename, where: "id = ?", whereArgs: [id]);
}

// update Data
updateData(tablename, data) async{
  var con = await mydatabase;
  return await con!.update(tablename, data, where: "id = ?", whereArgs: [data["id"]]);
}

// Detele Data
deleteData(tablename, data) async{
  var con = await mydatabase;
  // return await con!.rawDelete("detele from Student where id = ?")
  return await con!.delete(tablename, where: "id = ?", whereArgs: [data["id"]]);
}

}

