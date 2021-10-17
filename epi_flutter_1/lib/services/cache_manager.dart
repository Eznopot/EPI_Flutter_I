import 'dart:convert';

import 'package:epi_flutter_1/models/data_profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheManager {

  static Future<List<DataProfile>?> readData(String key) async {
    List<DataProfile> profiles = [];
    final prefs = await SharedPreferences.getInstance();
    List<String>? tmp = prefs.getStringList(key);
    if (tmp != null) {
      for (var line in tmp) {
        Map<String, dynamic> profileMap = jsonDecode(line);
        profiles.add(DataProfile.fromJson(profileMap));
      }
      return profiles;
    } else {
      return null;
    }
  }

  static Future writeData(DataProfile profile) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? list = [jsonEncode(profile.toJson())];
    print(profile.toJson());
    prefs.setStringList("profile", list);
  }
}