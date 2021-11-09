import 'package:flutter/material.dart';
import 'package:theme_dark_light_ddd_tdd_stud/domain/entities/product.dart';
import 'package:theme_dark_light_ddd_tdd_stud/presentete/components/button.dart';
import 'package:theme_dark_light_ddd_tdd_stud/theme/theme.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        color: Theme.of(context).canvasColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: ClipOval(
                              child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.network(
                              product.image,
                              fit: BoxFit.cover,
                            ),
                          )))),
                  Expanded(
                    child: Column(
                      children: [
                        Text(product.name),
                        const SizedBox(height: 10),
                        Text(
                          product.description,
                          style: Theme.of(context)
                              .textTheme
                              .overline
                              ?.copyWith(color: ThemeColor.greyLight),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10),
                        Text('\$${product.price} USD'),
                      ],
                    ),
                  ),
                  ButtonGeneric(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      onPressed: () {},
                      text: 'Buy'),
                ])));
  }
}
