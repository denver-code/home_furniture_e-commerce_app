import 'package:flutter/material.dart';
import 'package:home_furniture__ecommerce_app/screens/cover_screen.dart';
import 'package:home_furniture__ecommerce_app/screens/detail_screen.dart';
import 'package:home_furniture__ecommerce_app/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "BebasNeue",
        primarySwatch: Colors.blue,
      ),
      home: const CoverScreen(),
      // initialRoute: "/cover",
      routes: {
        "/cover": (_) => const CoverScreen(),
        "/main": (_) => const MainScreen(),
        "/detail": (_) => const DetailScreen()
      },
    );
  }
}
