import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String? city = "London";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Column(
        children: [
          RadioListTile<String>(
              groupValue: city,
              secondary: Icon(Icons.abc),
              title: Text("London"),
              value: "London",

              //  groupValue: city,
              onChanged: ((value) {
                city = value;
                setState(() {});
              })),
          RadioListTile<String>(
              groupValue: city,
              secondary: Icon(Icons.abc),
              title: Text("Newyork"),
              value: "Newyork",

              //  groupValue: city,
              onChanged: ((value) {
                city = value;
                setState(() {});
              })),
          RadioListTile<String>(
              subtitle: Text("Subtitle"),
              groupValue: city,
              secondary: Icon(Icons.abc),
              title: Text("Tokyo"),
              value: "Tokyo",

              //  groupValue: city,
              onChanged: ((value) {
                city = value;
                setState(() {});
              })),
        ],
      )),
    );
  }
}
