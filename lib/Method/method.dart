import 'package:geld_app2/DAL/DataBase.dart';
import 'package:geld_app2/Model/user_var.dart';
import 'package:sqflite/sqflite.dart';

class Method{

  static Future<int>AAddusr(user_var user)async{
    Database myDatabase=await DataBase.getdb();
    Map<String,dynamic>UserMap =new Map();
    UserMap["username"]=user.username;
    UserMap["password"]=user.password;
    myDatabase.insert("user_var", UserMap);
  }
  static Future<List>GetAllVar()async{
    Database myDatabase=await DataBase.getdb();
    List Users= await myDatabase.rawQuery("select * from user_var");
    return Users.toList();
  }
  static Future<int>DeleteVar(int idUser) async{
    Database myDatabase=await DataBase.getdb();
    int result=await myDatabase.delete("user_var",where: "idUser =${idUser}");
    return result;
  }
  static Future<int>EditUser(user_var old_var)async{
  Database myDatabase=await DataBase.getdb();
  Map<String,dynamic> newvar=new Map();
  newvar["idUser"]=old_var.idUser.toString();
  newvar["username"]="55";
  newvar["password"]="5533";
  int result = await myDatabase.update("user_var", newvar);
}
}