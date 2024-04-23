import 'package:carltutorial/Sqflite-ToDo/db_helper.dart';
import 'package:carltutorial/Sqflite-ToDo/model.dart';

class UserDBHelper {
  static String tableName = "User";

  //creates user & stores the data in database
  Future<void> createUser(UserModel user) async {
    var database = await DataBaseHelper.instance.database;
    await database!.insert(tableName, user.toMap());
  }

  //gets user from database
  Future<List<UserModel>> getUsers() async {
    List<UserModel> users = [];

    var database = await DataBaseHelper.instance.database;

    List<Map<String, dynamic>> list =
        await database!.rawQuery("SELECT * FROM $tableName");

    for (var element in list) {
      var person = UserModel.fromMap(element);
      users.add(person);
    }
    return users;
  }

  //updates user info in database
  Future<void> updateUser(UserModel user) async {
    var database = await DataBaseHelper.instance.database;
    await database!.update(
      tableName,
      user.toMap(),
      where: "id = ?",
      whereArgs: [user.id],
    );
  }

  //delete user from database
  Future<void> deleteUser(int id) async {
    var database = await DataBaseHelper.instance.database;
    await database!.delete(
      tableName,
      where: "id = ?",
      whereArgs: [id],
    );
  }
}
