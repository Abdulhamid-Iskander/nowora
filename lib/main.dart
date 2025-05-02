import 'package:flutter/material.dart';

//  import 'package:dio/dio.dart';
import 'package:nowora/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // getData();
  // getSport();

  runApp(const MainApp());
}

// final dio = Dio();
// void getData() async {
//   final response = await dio.get(
//       'https://newsapi.org/v2/top-headlines?apikey=b8a10fb9a4ab4dba970ed594165bd699&country=us');
//   print(response);
// }

// void getSport() async {
//   final response = await dio.get(
//       'https://newsapi.org/v2/top-headlines?country=us&category=sports&apiKey=b8a10fb9a4ab4dba970ed594165bd699');

//   print(response);
// }

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
