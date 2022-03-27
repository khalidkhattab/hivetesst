
import 'package:hive/hive.dart';
part 'user.g.dart';
@HiveType(typeId: 0)
class User{
  @HiveField(0)
  String name;
  @HiveField(1)
  String nClass;
  @HiveField(2)
  String time;

  User(this.name, this.nClass, this.time);
}
