import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        color: Colors.blue.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage("https://i.pinimg.com/736x/60/39/aa/6039aa295bf95bf8bad7568332304bc6.jpg"), 
            ),
            const SizedBox(height: 16),
            const Text(
              "Maria Karisma Pada Wangge",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const Text(
              "http://www.mariakarisma.com",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 20),
            const GridMenu()
          ],
        ),
      ),
    );
  }
}

class GridMenu extends StatelessWidget {
  const GridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.2,
      children: const [
        MenuCard(icon: Icons.gps_fixed, text: "Singaraja", color: Colors.green),
        MenuCard(icon: Icons.store, text: "Banjar Tegal", color: Colors.orange),
        MenuCard(icon: Icons.music_note, text: "All Genre", color: Colors.purple),
        MenuCard(icon: Icons.apartment, text: "Undiksha", color: Colors.blue),
      ],
    );
  }
}

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const MenuCard({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: color),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
