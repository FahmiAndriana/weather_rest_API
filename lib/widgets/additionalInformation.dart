import 'package:flutter/material.dart';

TextStyle titlefont = const TextStyle(
    fontWeight: FontWeight.w600, fontSize: 18, color: Colors.white);
TextStyle infoFont = const TextStyle(
    fontWeight: FontWeight.w400, fontSize: 18, color: Colors.white);

Widget addicitonalInformation(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18),
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Wind",
                    style: titlefont,
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "Pressure",
                    style: titlefont,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$wind",
                    style: infoFont,
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "$pressure",
                    style: infoFont,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Humidity",
                    style: titlefont,
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "Feels Like",
                    style: titlefont,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$humidity",
                    style: infoFont,
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Text(
                    "$feels_like",
                    style: infoFont,
                  ),
                ],
              )
            ],
          )
        ]),
  );
}
