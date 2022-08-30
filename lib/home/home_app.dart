import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter_app/components/header.dart';
import 'package:test_flutter_app/home/pages/first_page.dart';
import 'package:test_flutter_app/home/pages/second_page.dart';
import 'package:test_flutter_app/home/pages/third_page.dart';

import '../core/constants.dart';
import '../core/providers.dart';

class HomeApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pages = ref.watch(homePagingProvider);

    return Column(
      children: [
        const Header(),
        pages.last,
      ],
    );
  }
}
