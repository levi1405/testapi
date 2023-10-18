import 'package:flutter/material.dart';
import 'package:testapi/pages/test_dio.dart';
import 'package:testapi/pages/test_http.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/testhttp",
      routes: {
        // "/test":
        "/testhttp": (context) => const TestHttp(
              title: "Api test http",
            ),
        "/testdio": (context) => const TestDio(title: "Api Test Dio"),
      },
    );
  }
}