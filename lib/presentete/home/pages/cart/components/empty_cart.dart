import 'package:flutter/material.dart';
import 'package:theme_dark_light_ddd_tdd_stud/theme/theme.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/sad.png',
          height: 90,
        ),
        const SizedBox(height: 16),
        const Text(
          'Your cart is empty',
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Center(
            child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: const Text(
                  'Continue shopping',
                  style: TextStyle(color: ThemeColor.white),
                ))),
      ],
    );
  }
}
