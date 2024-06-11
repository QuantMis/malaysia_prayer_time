import 'package:flutter_test/flutter_test.dart';
import 'package:malaysia_prayer_time/e_solat_connector.dart';
import 'package:malaysia_prayer_time/malaysia_prayer_time.dart';

void main() {
  test('get zones', () async {
    List<Zone> zones = await Zone.all();
    expect(zones.length, 58);
  });

  test('get states', () async {
    List<States> states = await States.all();
    expect(states.length, 14);
  });

  test('get zones by stateId total equal to all zones', () async {
    List<Zone> allZones = await Zone.all();
    List<States> states = await States.all();
    int totalZones = allZones.length;
    int count = 0;
    for (int i = 0; i < states.length; i++) {
      List<Zone> zones = await Zone.state(stateId: states[i].stateId);
      count += zones.length;
    }
    expect(count, totalZones);
  });

  test('Esolat prayer time today() method return PrayerTime obj', () async {
    ESolatConnector esolatConnector = ESolatConnector();
    List<Zone> zones = await Zone.all();
    PrayerTime prayerTime = await esolatConnector.today(zone: zones.first);
    expect(prayerTime, isA<PrayerTime>());
  });

  test('Esolat prayer time week() method return List<PrayerTime> obj',
      () async {
    ESolatConnector esolatConnector = ESolatConnector();
    List<Zone> zones = await Zone.all();
    List<PrayerTime> listPrayerTime =
        await esolatConnector.week(zone: zones.first);
    expect(listPrayerTime, isA<List<PrayerTime>>());
  });

  test('Esolat prayer time month() method return List<PrayerTime> obj',
      () async {
    ESolatConnector esolatConnector = ESolatConnector();
    List<Zone> zones = await Zone.all();
    List<PrayerTime> listPrayerTime =
        await esolatConnector.month(zone: zones.first);
    expect(listPrayerTime, isA<List<PrayerTime>>());
  });

  test('Esolat prayer time year() method return List<PrayerTime> obj',
      () async {
    ESolatConnector esolatConnector = ESolatConnector();
    List<Zone> zones = await Zone.all();
    List<PrayerTime> listPrayerTime =
        await esolatConnector.year(zone: zones.first);
    expect(listPrayerTime, isA<List<PrayerTime>>());
  });
}
