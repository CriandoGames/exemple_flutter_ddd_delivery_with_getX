import 'package:flutter/material.dart';
import 'package:theme_dark_light_ddd_tdd_stud/domain/entities/product.dart';
import 'package:theme_dark_light_ddd_tdd_stud/theme/theme.dart';

class ItemCardShop extends StatelessWidget {
  const ItemCardShop({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
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
                          flex: 2,
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
                        flex: 3,
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: ThemeColor.white,
                                      ),
                                      child: InkWell(
                                          onTap: () {},
                                          child: const Icon(Icons.remove,
                                              color: ThemeColor.purple))),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    child: Text(
                                      "2",
                                      style: TextStyle(color: ThemeColor.green),
                                    ),
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: ThemeColor.purple,
                                      ),
                                      child: InkWell(
                                          onTap: () {},
                                          child: const Icon(
                                            Icons.add,
                                            color: ThemeColor.white,
                                          ))),
                                  const Spacer(),
                                  Text(
                                    '\$${product.price}',
                                    style: const TextStyle(
                                        color: ThemeColor.green),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]))),
        Positioned(
          right: 0,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: const CircleAvatar(
                backgroundColor: ThemeColor.pink,
                child: Icon(Icons.delete_forever_outlined,
                    color: ThemeColor.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
