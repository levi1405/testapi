import 'package:flutter/material.dart';
import 'package:testapi/main.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class TestHttp extends StatefulWidget {
  const TestHttp({super.key, required this.title});

  final String title;

  @override
  State<TestHttp> createState() => _TestHttpState();
}

class _TestHttpState extends State<TestHttp> {
  void prueba() {
    print('TEST API HTTP');
  }

  void getBored() async {
    try {
      // Peticion Http
      var url = Uri.parse("https://www.boredapi.com/api/activity");

      var response = await http.get(url);

      if (response.statusCode == 200) {
        var data = convert.jsonDecode(response.body);
        print(data);
      } else {
        print('Error${response.statusCode}');
      }
    } catch (e) {
      print('Error:${e}');
    }
  }

  void peticionhttp() async {
    // Peticion Http reqres
    var url = Uri.parse("https://reqres.in/api/users?page=2");

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      print(jsonResponse);
    } else {
      print('Fail status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        // child: const Icon(Icons.),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    prueba();
    getBored();
    peticionhttp();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
