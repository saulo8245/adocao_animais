import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(DogDonationApp());
}

class DogDonationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Donation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
