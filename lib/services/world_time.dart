// import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String flag;
  String locationLink;

  late String time;
  late bool isDayTime;

  WorldTime({
    required this.location,
    required this.flag,
    required this.locationLink,
  });

  Future<void> getTime() async {
    try {
      String link = "http://worldtimeapi.org/api/timezone/$locationLink";
      Uri url = Uri.parse(link);
      final response = await get(url);
      Map data = jsonDecode(response.body);

      String dateTime = data['datetime'];
      DateTime now = DateTime.parse(dateTime.substring(0, 26));

      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'Could not get time data!';
    }
  }
}
