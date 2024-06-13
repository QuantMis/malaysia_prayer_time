import 'dart:convert';
import 'utils/constant.dart';

class States {
  int stateId;
  String name;
  States(this.stateId, this.name);

  static Future<List<States>> all() async {
    List<States> states = [];
    List<dynamic> data = jsonDecode(Constant.states)['states'];
    for (int i = 0; i < data.length; i++) {
      states.add(States(data[i]['id'], data[i]['name']));
    }
    return states;
  }
}
