import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/animal_timeline_screen.dart';
import 'services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AuthService.loadToken();
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
      home: AuthService.isLoggedIn() ? AnimalTimelineScreen() : LoginScreen(),
    );
  }
}
