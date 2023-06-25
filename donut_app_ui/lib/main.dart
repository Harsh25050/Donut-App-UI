import 'package:donut_app_ui/Models/cart.dart';
import 'package:donut_app_ui/Pages/home_page.dart';
import 'package:donut_app_ui/Pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MyWidget(),
        theme: ThemeData(primarySwatch: Colors.purple),
      ),
    );
  }
}
