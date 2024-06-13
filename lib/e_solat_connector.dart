import 'dart:async';
import 'package:malaysia_prayer_time/malaysia_prayer_time.dart';
import 'package:malaysia_prayer_time/utils/http_service.dart';

class ESolatConnector {
  Future<PrayerTime> today({required Zone zone}) async {
    try {
      Map<dynamic, dynamic> decodedResult =
          await HttpService.get(zone: zone.code, period: 'today');
      return PrayerTime.fromJson(decodedResult['prayerTime'][0]);
    } catch (e) {
      throw Exception('ESolat Connector error $e');
    }
  }

  Future<List<PrayerTime>> week({required Zone zone}) async {
    try {
      Map<dynamic, dynamic> decodedResult =
          await HttpService.get(zone: zone.code, period: 'week');
      return PrayerTime.getListFromJson(decodedResult);
    } catch (e) {
      throw Exception('ESolat Connector error $e');
    }
  }

  Future<List<PrayerTime>> month({required Zone zone}) async {
    try {
      Map<dynamic, dynamic> decodedResult =
          await HttpService.get(zone: zone.code, period: 'month');
      return PrayerTime.getListFromJson(decodedResult);
    } catch (e) {
      throw Exception('ESolat Connector error $e');
    }
  }

  Future<List<PrayerTime>> year({required Zone zone}) async {
    try {
      Map<dynamic, dynamic> decodedResult =
          await HttpService.get(zone: zone.code, period: 'year');
      return PrayerTime.getListFromJson(decodedResult);
    } catch (e) {
      throw Exception('ESolat Connector error $e');
    }
  }

  Future<List<PrayerTime>> duration(
      {required Zone zone,
      required String datestart,
      required String dateend}) async {
    try {
      Map<dynamic, dynamic> decodedResult = await HttpService.post(
          zone: zone.code, datestart: datestart, dateend: dateend);
      return PrayerTime.getListFromJson(decodedResult);
    } catch (e) {
      throw Exception('ESolat Connector error $e');
    }
  }
}
