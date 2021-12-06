import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

String location;           //location name for ui
String time = '';               //time in that location
String flag;               //url to an asset flag icon
String url;               //location url for api endpoints
// bool isDaytime = true;             //true or false if daytime or not

WorldTime({required this.location, required this.flag, required this.url});

Future<void> getTime() async {

  try{

    //  Response response = await get(Uri.http:());
    // Response response = await get(Uri.http('worldtimeapi.org', '/api/timezone/Asia/Kolkata'));
    // 'http://www.worldtimeapi.org/api/timezone/$url'
    // http://www.worldtimeapi.org/api/timezone/Asia/Kolkata
    Response response = await get(Uri.parse('http://www.worldtimeapi.org/api/timezone/Asia/Tokyo'));
     Map data = jsonDecode(response.body);
     String datetime = data['utc_datetime'] ;
     print(datetime);
     String offset = data['utc_offset'].substring(1,3);
     DateTime now = DateTime.parse(datetime);
     now = now.add(Duration(hours: int.parse(offset)));
    //  print(now);
      // now.add()
      // print(now);

      //set the time property
      // isDaytime = now.hour > 6 && now.hour <20 ? true : false;
      time = DateFormat.jm().format(now);

  }
  catch (e) {
    print('caught error: $e');
    time = 'could not get time data';
  }
    


  }

}

// instance.getTime()