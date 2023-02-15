import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/weather_model.dart';

class WeatherController {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=5ea4378a7b6e48b76ed361c72787c4f9&units=metrics");
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityname);
    return Weather.fromJson(body);
  }
}
