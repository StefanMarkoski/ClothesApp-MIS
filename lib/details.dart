import 'package:flutter/material.dart';
import 'package:clothes_app/clothes.dart';
class DetailsScreen extends StatelessWidget {
  final Clothes item;

  const DetailsScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(item.name)),
        backgroundColor: Color(
            0xFF7C4D3A), // A warm medium brown for the app bar
      ),
      body: Container(
        color: Color(0xFFF5E6D3), // Light warm beige for the background
        padding: const EdgeInsets.all(20.0), // Reduced padding for a snug feel
        child: SingleChildScrollView( // Allows for scrolling if content is long
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Display the image
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                // Slightly rounded corners
                child: Image.network(
                  item.pictureUrl,
                  height: 400, // Slightly reduced height
                  width: double.infinity,
                  fit: BoxFit.cover, // Changed to cover for a better fit
                ),
              ),
              const SizedBox(height: 20.0), // Reduced space between elements
              // Display the name
              Text(
                item.name,
                style: TextStyle(
                  fontSize: 26.0, // Slightly larger font size for the name
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D3A29), // A dark warm brown for the name
                ),
                textAlign: TextAlign.center, // Centered text
              ),
              const SizedBox(height: 10.0),
              // Display the description
              Text(
                item.description,
                style: TextStyle(
                  fontSize: 18.0,
                  // Slightly larger font size for the description
                  color: Color(0xFF7A6A5D), // Soft warm gray for description
                ),
                textAlign: TextAlign.center, // Centered text
              ),
              const SizedBox(height: 10.0),
              // Display the price
              Text(
                'Price: \$${item.price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 22.0, // Larger font size for price
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8B5B29), // Warm brown for price
                ),
                textAlign: TextAlign.center, // Centered text
              ),
            ],
          ),
        ),
      ),
    );
  }
}