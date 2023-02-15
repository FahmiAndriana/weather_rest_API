import 'package:flutter/material.dart';
import 'package:wheather/data/controllers/wather.dart';
import 'package:wheather/data/models/weather_model.dart';
import './widgets/currentWidget.dart';
import './widgets/additionalInformation.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textC = TextEditingController();
  WeatherController client = WeatherController();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather("${city}");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String? city = "jakarta";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7286D3),
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "Weather",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff7286D3),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined)),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                currentWidget(Icons.wb_sunny_rounded, "${data?.temp}",
                    "${data?.cityname}"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    controller: textC,
                    autocorrect: true,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),
                        hoverColor: Colors.white,
                        border: UnderlineInputBorder(),
                        fillColor: Colors.white,
                        labelText: "Search your City here"),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      city = textC.text;
                    });
                  },
                  child: Text("Find"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(
                        horizontal: 75,
                        vertical: 20,
                      )),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Additional Information",
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                addicitonalInformation("${data?.wind}", "${data?.pressure}",
                    "${data?.humidity}", "${data?.feels_like}"),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
