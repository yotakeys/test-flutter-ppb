import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location = 'Berlin';
  String time = '';
  String flag = 'germany.png';
  String url = 'Europe/Berlin';

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    String stringUrl = 'http://worldtimeapi.org/api/timezone/$url';
    Response response = await get(Uri.parse(stringUrl));
    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    print(now);

    time = now.toString();
  }
}
