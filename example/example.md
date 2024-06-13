```Dart
import 'package:malaysia_prayer_time.dart';

\\\ Create states to store the zone data 
List<Zone> zone = Zone.all();

\\\ Create states to store the states data 
List<States> states = States.all().first;


\\\ Create states to store the prayer time data
late PrayerTime todayPrayerTime;
late List<PrayerTime> thisWeekPrayerTime;
late List<PrayerTime> thisMonthPrayerTime;
late List<PrayerTime> thisYearPrayerTime;
late List<PrayerTime> specificMonthPrayerTime;
late List<PrayerTime> specificYearPrayerTime;

\\\ Return today prayer time for a specific zone
todayPrayerTime = MalaysiaPrayerTime.today(zone: zone)

\\\ Return this week prayer time for a specific zone
thisWeekPrayerTime = MalaysiaPrayerTime.week(zone: zone)

\\\ Return this month prayer time for a specific zone
thisMonthPrayerTime = MalaysiaPrayerTime.month(zone: zone)

\\\ Return this year prayer time for a specific zone
thisYearPrayerTime = MalaysiaPrayerTime.year(zone: zone)

\\\ Return a specific year prayer time for a specific zone
specificYearPrayerTime = MalaysiaPrayerTime.year(zone: zone, year="2021")

\\\ Return a specific month prayer time for a specific zone and year
specificMonthPrayerTime = MalaysiaPrayerTime.duration(zone: zone, datestart="2021-04-20", dateend="2021-05-30")

```

