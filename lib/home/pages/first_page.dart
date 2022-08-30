import 'package:flutter/material.dart';

import '../../core/constants.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'This page is the 1st page for Home.',
      style: optionStyle,
    );
  }
}
