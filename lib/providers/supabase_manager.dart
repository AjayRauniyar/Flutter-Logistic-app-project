import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseManager {
  Future readData() async {
    var response = await Supabase.instance.client.from('vehicles').select();
    print(response);
    return response;
  }
}

class SupabaseUserManager {
  Future readData() async {
    try {
      var response = await Supabase.instance.client.from('users').select();
      return response;
    } catch (e) {
      print("error : $e");
    }
  }
}
