import 'package:flutter/material.dart';

import '../../core/constants.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'This page is the 2nd page for Home.',
      style: optionStyle,
    );
  }
}
