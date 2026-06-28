import 'package:flutter/material.dart';

void main() {
  runApp(ProductApp());
}

class ProductApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Product Store")),
        body: Center(
          child: Container(
            width: 250,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Search",
                    border: OutlineInputBorder(),
                  )
                ),
                SizedBox(height: 9),
                Image.network(
                  "https://images.pexels.com/photos/11398246/pexels-photo-11398246.jpeg",
                  height: 150,
                ),
                Text(
                  "Headphones",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text("Rs. 1500"),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart),
                    SizedBox(width: 8),
                    TextButton(onPressed: () {}, child: Text("Add to Cart")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
