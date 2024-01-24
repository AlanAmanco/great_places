import 'package:flutter/material.dart';
import 'package:great_places/ultils/app_routes.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Lugares'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PlaceForm);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}