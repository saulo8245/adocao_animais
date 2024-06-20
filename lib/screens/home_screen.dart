import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/dog_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Dog Donations'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            DogCard(
              name: 'Buddy',
              breed: 'Golden Retriever',
              imageUrl: 'https://example.com/buddy.jpg',
            ),
            DogCard(
              name: 'Max',
              breed: 'Labrador',
              imageUrl: 'https://example.com/max.jpg',
            ),
            // Adicione mais DogCards conforme necessário
          ],
        ),
      ),
    );
  }
}
