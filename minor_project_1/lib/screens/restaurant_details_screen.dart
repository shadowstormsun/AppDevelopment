import 'package:flutter/material.dart';
import '../models/food_item.dart';
import 'food_details_screen.dart';

class RestaurantDetailsScreen extends StatelessWidget {
  final String restaurantName;
  final double rating;

  const RestaurantDetailsScreen({
    super.key,
    required this.restaurantName,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    // Mock Menu Data
    final List<FoodItem> menu = [
      FoodItem(
        id: '1',
        name: 'Classic Cheese Burger',
        restaurantName: restaurantName,
        price: 149.0,
        rating: 4.5,
        imageUrl: '',
        description:
            'Juicy grilled chicken patty loaded with melted cheddar cheese and fresh veggies.',
      ),
      FoodItem(
        id: '2',
        name: 'BBQ Bacon Burger',
        restaurantName: restaurantName,
        price: 199.0,
        rating: 4.8,
        imageUrl: '',
        description:
            'Smoky BBQ sauce, crispy strips, caramelized onions, and double cheese.',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text(restaurantName)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.orange[50],
            child: Row(
              children: [
                const Icon(
                  Icons.storefront,
                  size: 40,
                  color: Colors.deepOrange,
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurantName,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('⭐ $rating • American, Fast Food'),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Menu',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: menu.length,
              itemBuilder: (context, index) {
                final item = menu[index];
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepOrange[100],
                    child: const Icon(Icons.fastfood, color: Colors.deepOrange),
                  ),
                  title: Text(
                    item.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('₹${item.price}'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodDetailsScreen(foodItem: item),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
