import 'package:flutter/material.dart';

import '../../core/constants.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'This page is the 3rd page for Home.',
      style: optionStyle,
    );
  }
}
