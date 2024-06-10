class Zone {
  String kod, kawasan;
  int stateId;

  Zone(this.kod, this.kawasan, this.stateId);

  static List<Zone> all() {
    List<Zone> zones = [];
    return zones;
  }

  static List<Zone> state(int StateId) {
    // TODO: get by stateId
    List<Zone> zones = [];
    return zones;
  }
}
