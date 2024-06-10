import 'package:flutter_test/flutter_test.dart';
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
}
