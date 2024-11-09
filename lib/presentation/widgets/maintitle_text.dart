import 'package:flutter/material.dart';

class MaintitleText extends StatelessWidget {
  const MaintitleText({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
title,
style: const TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold
) );

  }
}
