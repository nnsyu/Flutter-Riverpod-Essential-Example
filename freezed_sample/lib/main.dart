import 'package:flutter/material.dart';
import 'package:freezed_sample/pages/collections_page.dart';
import 'package:freezed_sample/pages/hotel_list_page.dart';
import 'package:freezed_sample/pages/method_page.dart';
import 'package:freezed_sample/pages/mutable_person_page.dart';
import 'package:freezed_sample/pages/person_page.dart';
import 'package:freezed_sample/widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Data class Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: const [
            CustomButton(
              title: 'Person',
              child: PersonPage(),
            ),
            CustomButton(
              title: 'Mutable Person',
              child: MutablePersonPage(),
            ),
            CustomButton(
              title: 'Collections',
              child: CollectionsPage(),
            ),
            CustomButton(
              title: 'Method',
              child: MethodPage(),
            ),
            CustomButton(
              title: 'Hotel List',
              child: HotelListPage(),
            ),
          ],
        ),
      ),
    );
  }
}
