import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Shop',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FootballShopHomePage(),
    );
  }
}

class FootballShopHomePage extends StatelessWidget {
  const FootballShopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Football Shop',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tombol All Products - Biru
            _buildProductButton(
              context: context,
              icon: Icons.shopping_bag,
              text: 'All Products',
              color: Colors.blue,
              onPressed: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                      content: Text('Kamu telah menekan tombol All Products'),
                    ),
                  );
              },
            ),
            const SizedBox(height: 20),

            // Tombol My Products - Hijau
            _buildProductButton(
              context: context,
              icon: Icons.inventory,
              text: 'My Products',
              color: Colors.green,
              onPressed: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                      content: Text('Kamu telah menekan tombol My Products'),
                    ),
                  );
              },
            ),
            const SizedBox(height: 20),

            // Tombol Create Product - Merah
            _buildProductButton(
              context: context,
              icon: Icons.add_circle,
              text: 'Create Product',
              color: Colors.red,
              onPressed: () {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                      content: Text('Kamu telah menekan tombol Create Product'),
                    ),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductButton({
    required BuildContext context,
    required IconData icon,
    required String text,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 24),
              const SizedBox(width: 12),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
