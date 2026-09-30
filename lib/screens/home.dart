import 'package:latihan_kuis/models/data.dart';
import 'package:latihan_kuis/screens/detail.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: menus.length,
        itemBuilder: (context, index) {
          final menu = menus[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(menu: menu),
                ),
              );
            },
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                menu.image,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey[300],
                  child: const Icon(Icons.fastfood, color: Colors.grey),
                ),
              ),
            ),
            title: Text(
              menu.name,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text("Rp ${menu.price}"),
            trailing: const Icon(Icons.chevron_right, color: Colors.grey),
          );
        },
      ),
    );
  }
}
