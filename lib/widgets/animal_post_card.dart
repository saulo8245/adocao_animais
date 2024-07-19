import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/animal.dart';

class AnimalPostCard extends StatelessWidget {
  final Animal animal;

  AnimalPostCard({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CachedNetworkImage(
            imageUrl: animal.photo,
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
            width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  animal.name,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  animal.address,
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                ),
                SizedBox(height: 8.0),
                Text('Owned by: ${animal.user.username}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
