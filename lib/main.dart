import 'package:flutter/material.dart';
import 'package:giftify/constants/colors.dart';
import 'package:giftify/pages/start_page.dart';


void main() {
  // Habilitar la opción de experimento "records"
  // para usar características experimentales de Dart
  // como las clases de "record".
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,
        //primarySwatch: Colors.blue,
        
      ),
      home: Scaffold(
        body: Start(),
      )
    );
  }
}



