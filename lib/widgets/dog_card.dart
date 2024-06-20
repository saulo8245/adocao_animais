import 'package:flutter/material.dart';

class DogCard extends StatelessWidget {
  final String name;
  final String breed;
  final String imageUrl;

  DogCard({required this.name, required this.breed, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        leading: Image.network(imageUrl,
            width: 50.0, height: 50.0, fit: BoxFit.cover),
        title: Text(name,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
        subtitle: Text(breed),
      ),
    );
  }
}
