
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_test/hive/user.dart';

class Cash{

  static Future saveUser(User user) async {
    var box= await Hive.openBox('user');
    box.put('user', user);
    box.close();
  }


  static Future<User?> getUser()async {
    var box= await Hive.openBox<User>('user');
    User? user=box.get('user');
    box.close();
    return user;
  }
}