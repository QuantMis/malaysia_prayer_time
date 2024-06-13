library malaysia_prayer_time;

import 'package:malaysia_prayer_time/e_solat_connector.dart';
import 'package:malaysia_prayer_time/prayertime.dart';
import 'package:malaysia_prayer_time/zone.dart';

export 'zone.dart';
export 'prayertime.dart';
export 'states.dart';

class MalaysiaPrayerTime {
  ESolatConnector eSolatConnector = ESolatConnector();

  /// A function that return single prayertime object
  /// This prayertime object contain the prayertime information for today
  /// The [zone] should be a Zone object type.
  Future<PrayerTime> today({required Zone zone}) async {
    PrayerTime prayerTime = await eSolatConnector.today(zone: zone);
    return prayerTime;
  }

  /// A function that return a list prayertime object
  /// This list prayertime object contain the prayertime information for this week
  /// The [zone] should be a Zone object type.
  Future<List<PrayerTime>> week({required Zone zone}) async {
    List<PrayerTime> prayerTime = await eSolatConnector.week(zone: zone);
    return prayerTime;
  }

  /// A function that return a list prayertime object
  /// This list prayertime object contain the prayertime information for this month
  /// The [zone] should be a Zone object type.
  Future<List<PrayerTime>> month({required Zone zone}) async {
    List<PrayerTime> prayerTime = await eSolatConnector.month(zone: zone);
    return prayerTime;
  }

  /// A function that return a list prayertime object
  /// This list prayertime object contain the prayertime information for this year
  /// The [zone] should be a Zone object type.
  Future<List<PrayerTime>> year({required Zone zone}) async {
    List<PrayerTime> prayerTime = await eSolatConnector.year(zone: zone);
    return prayerTime;
  }

  /// A function that return specific range prayertime days
  /// The [zone] should be a Zone object type.
  /// The [dateend] should have a format 'YYYY-MM-DD'.
  /// The [datestart] should have a format 'YYYY-MM-DD'.
  Future<List<PrayerTime>> duration(
      {required Zone zone,
      required String datestart,
      required String dateend}) async {
    List<PrayerTime> prayerTime = await eSolatConnector.duration(
        zone: zone, datestart: datestart, dateend: dateend);
    return prayerTime;
  }
}
