import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String time;
  String location;
  String flag;
  String url;
  bool isDayTime;
  WorldTime({this.location, this.flag, this.url});

  Future <void> getTime() async {
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
    Map times = json.decode(response.body);
    String datetime = times['datetime'];
    String offset = times['utc_offset'].substring(1,3);
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    isDayTime = now.hour > 6 && now.hour < 18 ? true : false;
    time = DateFormat.jm().format(now);
  }
}
