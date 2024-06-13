# Malaysia Prayer Time Package for Flutter

### **Key Features:**
* **Get list of zones in Malaysia**
* **Get list of states in Malaysia**
* **Get list of zones in Malaysia by states**
* **Get today prayer time**
* **Get this week prayer time**
* **Get monthly prayer time**
* **Get yearly prayer time**
* **Get prayer time for custom duration**

### ✅ Next steps
- Add support for **IOS**
- Implement caching 
- Add support for local notification

<br>

### 🛠 Getting Started
## Initial Configurations (Android)

To use the `malaysia_prayer_time`, follow these steps:

1. Add the `malaysia_prayer_time` plugin to your project's `pubspec.yaml` file:

```bash
flutter pub add malaysia_prayer_time
```

2. After adding the dependency, run the following command to get the package:

```bash
flutter pub get
```
3. Give INTERNET permission to your flutter application. Add this line in your main, debug and profile `AndroidManifest.xml`


```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.myapp">
   <application>
        ...
    </application>
    <uses-permission android:name="android.permission.VIBRATE"/>
    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED"/>
</manifest>
```

<br>

## Example (Android)
```Dart
import 'package:malaysia_prayer_time.dart';

\\\ Declare the specific zones
Zone zone = Zone.all().first;

\\\ Declare states to store the prayer time data
late PrayerTime todayPrayerTime;
late List<PrayerTime> thisWeekPrayerTime;
late List<PrayerTime> thisMonthPrayerTime;
late List<PrayerTime> thisYearPrayerTime;
late List<PrayerTime> specificMonthPrayerTime;
late List<PrayerTime> specificYearPrayerTime;

\\\ Fetch today prayer time for a specific zone
todayPrayerTime = MalaysiaPrayerTime.today(zone: zone)

\\\ Fetch this week prayer time for a specific zone
thisWeekPrayerTime = MalaysiaPrayerTime.week(zone: zone)

\\\ Fetch this month prayer time for a specific zone
thisMonthPrayerTime = MalaysiaPrayerTime.month(zone: zone)

\\\ Fetch this year prayer time for a specific zone
thisYearPrayerTime = MalaysiaPrayerTime.year(zone: zone)

\\\ Fetch specific year prayer time for a specific zone
specificYearPrayerTime = MalaysiaPrayerTime.year(zone: zone, year="2021")

\\\ Fetch specific month prayer time for a specific zone and year
specificMonthPrayerTime = MalaysiaPrayerTime.year(zone: zone, year="2021", month="2")

```
<br>

### Credits
1. JAKIM e-Solat: http://www.e-solat.gov.my/web/waktusolat.php
2. HTTP Library: https://pub.dev/packages/http

## License
This package is under ```MIT license```