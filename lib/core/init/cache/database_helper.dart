import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:yardim_sever/core/base/model/user_model.dart';

import 'package:yardim_sever/core/constants/cache/database_constants.dart';


class DatabaseHelper {
  static DatabaseHelper _databasehelper;
  static Database _database;

  factory DatabaseHelper() {
    if (_databasehelper == null) {
      _databasehelper = DatabaseHelper._internal();
      return _databasehelper;
    } else {
      return _databasehelper;
    }
  }

  DatabaseHelper._internal();

  Future<Database> _getDatabase() async {
    if (_database == null) {
      _database = await _initializeDatabase();
      return _database;
    } else {
      return _database;
    }
  }

  Future<Database> _initializeDatabase() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, DatabaseConstants.DATABASE_NAME);
    bool exists = await databaseExists(path);

    if (!exists) {
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}
      ByteData data = await rootBundle.load(join("assets", DatabaseConstants.DATABASE_NAME));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes, flush: true);
    }
    return await openDatabase(path, readOnly: false);
  }

  Future<int> createUser(UserModel user) async {
    Database db = await _getDatabase();
    int result = await db.insert('User', user.toMap());
    return result;
  }

  Future<UserModel> getUser() async {
    Database db = await _getDatabase();
    List<Map<String, dynamic>> result = await db.rawQuery('SELECT userName, userEmail, userPassword FROM User');
    return UserModel.fromMap(result[0]);
  }

  Future<int> deleteUser() async {
    Database db = await _getDatabase();
    int result = await db.delete('User');
    return result;
  }
}
