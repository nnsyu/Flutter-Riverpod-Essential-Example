import 'dart:convert';

import 'package:freezed_sample/models/hotel.dart';

const String jsonData = '';

Future<List<Hotel>> fetchHotels() async {
  await Future.delayed(const Duration(seconds: 1));

  final List hotelList = jsonDecode(jsonData);

  final hotels = [for (final hotel in hotelList) Hotel.fromJson(hotel)];

  print(hotels[0]);

  return hotels;
}
