class PrayerTime {
  String hijri;
  String date;
  String imsak;
  String fajr;
  String syuruk;
  String dhuhr;
  String asr;
  String maghrib;
  String isha;

  PrayerTime(this.hijri, this.date, this.imsak, this.fajr, this.syuruk,
      this.dhuhr, this.asr, this.maghrib, this.isha);

  static PrayerTime fromJson(Map<dynamic, dynamic> json) {
    try {
      return PrayerTime(
        json['hijri'],
        json['date'],
        json['imsak'],
        json['fajr'],
        json['syuruk'],
        json['dhuhr'],
        json['asr'],
        json['maghrib'],
        json['isha'],
      );
    } catch (e) {
      throw Exception('PrayerTime fromJson method: Failed parsing json $e');
    }
  }

  static List<PrayerTime> getListFromJson(Map<dynamic, dynamic> json) {
    try {
      List<PrayerTime> list = [];
      List<dynamic> listPrayerTimeJson = json['prayerTime'];
      for (int i = 0; i < listPrayerTimeJson.length; i++) {
        PrayerTime prayerTime = fromJson(listPrayerTimeJson[i]);
        list.add(prayerTime);
      }
      return list;
    } catch (e) {
      throw Exception(
          'PrayerTime getListFromJson method: Failed parsing json $e');
    }
  }
}
