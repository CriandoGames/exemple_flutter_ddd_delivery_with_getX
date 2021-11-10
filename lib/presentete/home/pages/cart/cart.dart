import 'package:flutter/material.dart';

import 'components/card_with_item.dart';
import 'components/empty_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Shopping Cart'),
      ),
      body: const CardWithItem(),
    );
  }
}


// EmptyCart()