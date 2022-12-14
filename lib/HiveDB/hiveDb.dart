import 'package:hive/hive.dart';
import 'package:shared_proferences_3/user/User.dart';

class HiveDB {
  var box  = Hive.box('pdp_online');
  void storeUser(User user) async{
    box.put('user', user.toJson());
  }
  User loadUser(){
    var user =  new User.fromJson(box.get('user'));
    return user;
  }
  void removeUser() async{
    box.delete('user');
  }
}