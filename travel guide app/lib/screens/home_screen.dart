import 'package:flutter/material.dart';
import 'package:travel_guide_app/data/dummy_data.dart';
import 'package:travel_guide_app/screens/details_screen.dart';
import 'package:travel_guide_app/models/destination_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel Guide"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: destinations.length,
        itemBuilder: (ctx, index) {
          Destination destination = destinations[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(destination.imageUrl, width: 100, fit: BoxFit.cover),
              title: Text(destination.name),
              subtitle: Text(destination.location),
              onTap: () {
                // Navigate to the Details Screen when tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(destination: destination),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
