import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/product_card.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Grocery Store'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: dummyProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) =>
              ProductCard(product: dummyProducts[index]),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
