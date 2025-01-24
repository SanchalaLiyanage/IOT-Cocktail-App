// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 253, 253),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 117, 117, 117),
        elevation: 0,
        title: Text(
          "Favourites",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildFavoriteItem(
            title: "Negroni",
            description: "Bold and Bittersweet Classic",
            category: "Gin",
            imagePath: "assets/BGpic.jpg",
          ),
          _buildFavoriteItem(
            title: "Basil Smash",
            description: "For basil lovers",
            category: "Gin",
            imagePath: "assets/d1.jpg",
          ),
          _buildFavoriteItem(
            title: "Elk's Own",
            description: "Port wine & whiskey",
            category: "Whiskey",
            imagePath: "assets/d1.jpg",
          ),
          _buildFavoriteItem(
            title: "Tom Collins",
            description: "Refreshing and Timeless",
            category: "Gin",
            imagePath: "assets/d1.jpg",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: 1, // Set the selected index
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourites"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }

  Widget _buildFavoriteItem({
    required String title,
    required String description,
    required String category,
    required String imagePath,
  }) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: EdgeInsets.all(12),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imagePath,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(height: 4),
            Text(
              category,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        trailing: Icon(Icons.lock, color: Colors.grey),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FavoritesScreen(),
  ));
}
