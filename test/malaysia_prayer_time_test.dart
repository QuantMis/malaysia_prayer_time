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
  test('Esolat prayer time duration() method return List<PrayerTime> obj',
      () async {
    ESolatConnector esolatConnector = ESolatConnector();
    String datestart = "2024-04-20";
    String dateend = "2024-04-22";
    List<Zone> zones = await Zone.all();
    List<PrayerTime> listPrayerTime = await esolatConnector.duration(
        zone: zones.first, datestart: datestart, dateend: dateend);
    expect(listPrayerTime, isA<List<PrayerTime>>());
  });

  test('Test MalaysiaPrayerTime class - today method', () async {
    List<Zone> zones = await Zone.all();
    PrayerTime prayerTime = await MalaysiaPrayerTime().today(zone: zones.first);
    expect(prayerTime, isA<PrayerTime>());
  });

  test('Test MalaysiaPrayerTime class - week method', () async {
    List<Zone> zones = await Zone.all();
    List<PrayerTime> prayerTime =
        await MalaysiaPrayerTime().week(zone: zones.first);
    expect(prayerTime, isA<List<PrayerTime>>());
  });

  test('Test MalaysiaPrayerTime class - month method', () async {
    List<Zone> zones = await Zone.all();
    List<PrayerTime> prayerTime =
        await MalaysiaPrayerTime().month(zone: zones.first);
    expect(prayerTime, isA<List<PrayerTime>>());
  });
  test('Test MalaysiaPrayerTime class - year method', () async {
    List<Zone> zones = await Zone.all();
    List<PrayerTime> prayerTime =
        await MalaysiaPrayerTime().year(zone: zones.first);
    expect(prayerTime, isA<List<PrayerTime>>());
  });

  test('Test MalaysiaPrayerTime class - duration method', () async {
    String datestart = "2024-04-20";
    String dateend = "2024-04-22";
    List<Zone> zones = await Zone.all();
    List<PrayerTime> prayerTime = await MalaysiaPrayerTime()
        .duration(zone: zones.first, datestart: datestart, dateend: dateend);
    expect(prayerTime, isA<List<PrayerTime>>());
  });
}
