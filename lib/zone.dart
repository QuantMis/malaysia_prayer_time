import 'utils/constant.dart';
import 'dart:convert';

class Zone {
  String code, name;
  int stateId;

  Zone(this.code, this.name, this.stateId);

  static Future<List<Zone>> all() async {
    List<Zone> zones = [];
    List<dynamic> data = jsonDecode(Constant.zones)['zones'];
    for (int i = 0; i < data.length; i++) {
      zones.add(Zone(data[i]['code'], data[i]['name'], data[i]['stateId']));
    }
    return zones;
  }

  static Future<List<Zone>> state({required int stateId}) async {
    List<Zone> zones = await all();
    return zones.where((zone) => zone.stateId == stateId).toList();
  }
}
