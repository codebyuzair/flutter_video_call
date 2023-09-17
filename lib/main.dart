import 'package:flutter/material.dart';
import 'package:flutter_video_call/home.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Call App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "login": (context) => const LoginPage(),
        "home": (context) => const HomePage(),
      },
      initialRoute: "login",
    );
  }
}
