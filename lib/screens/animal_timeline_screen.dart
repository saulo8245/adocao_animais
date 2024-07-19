import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/animal_post_card.dart';
import '../services/api_service.dart';
import '../models/animal.dart';

class AnimalTimelineScreen extends StatefulWidget {
  @override
  _AnimalTimelineScreenState createState() => _AnimalTimelineScreenState();
}

class _AnimalTimelineScreenState extends State<AnimalTimelineScreen> {
  late Future<List<Animal>> futureAnimals;

  @override
  void initState() {
    super.initState();
    futureAnimals = ApiService.fetchAnimals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Adoption Timeline'),
      body: FutureBuilder<List<Animal>>(
        future: futureAnimals,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No animals available for adoption.'));
          } else {
            final animals = snapshot.data!;
            return ListView.builder(
              itemCount: animals.length,
              itemBuilder: (context, index) {
                final animal = animals[index];
                return AnimalPostCard(animal: animal);
              },
            );
          }
        },
      ),
    );
  }
}
