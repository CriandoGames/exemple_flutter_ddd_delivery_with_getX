import 'package:flutter/material.dart';

import 'package:theme_dark_light_ddd_tdd_stud/data/faker/mock_list_product.dart';

import 'components/item_product.dart';

class ProdutsScreen extends StatelessWidget {
  const ProdutsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produts'),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: products.length,
          itemBuilder: (_, index) {
            return ItemProduct(product: products[index]);
          }),
    );
  }
}
