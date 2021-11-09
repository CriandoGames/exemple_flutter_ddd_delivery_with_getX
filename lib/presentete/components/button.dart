// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:theme_dark_light_ddd_tdd_stud/theme/theme.dart';

class ButtonGeneric extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final padding;
  const ButtonGeneric({
    Key? key,
    required this.text,
    required this.onPressed,
    this.padding = const EdgeInsets.all(14.0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: colorsGradients,
          ),
        ),
        child: Padding(
          padding: padding,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .button
                ?.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
