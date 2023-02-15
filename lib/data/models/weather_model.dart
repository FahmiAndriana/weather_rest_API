class Weather {
  String? cityname;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;

  Weather({cityname, temp, wind, humidity, feels_like, pressure});

  Weather.fromJson(Map<String, dynamic> json) {
    cityname = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
  }
}
