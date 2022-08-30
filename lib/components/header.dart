import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter_app/core/providers.dart';

import '../core/constants.dart';
import '../home/pages/first_page.dart';
import '../home/pages/second_page.dart';
import '../home/pages/third_page.dart';

class Header extends ConsumerWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pages = ref.watch(homePagingProvider);

    return Container(
      height: headerHeightPhone,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: (pages.length <= 1)
                ? null
                : () {
                    ref.read(homePagingProvider.notifier).goBack();
                  },
            child: const Text(
              "Back",
              style: optionStyle,
            ),
          ),
          TextButton(
            onPressed: pages.length >= 3
                ? null
                : () {
                    switch (pages.last.runtimeType) {
                      case FirstPage:
                        ref
                            .read(homePagingProvider.notifier)
                            .goTo(const SecondPage());
                        break;
                      case SecondPage:
                        ref
                            .read(homePagingProvider.notifier)
                            .goTo(const ThirdPage());
                        break;
                      default:
                        break;
                    }
                  },
            child: const Text(
              "Next",
              style: optionStyle,
            ),
          ),
        ],
      ),
    );
  }
}
