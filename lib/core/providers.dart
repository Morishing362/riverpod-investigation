import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_flutter_app/home/pages/first_page.dart';

// final counterProvider = StateNotifierProvider<Counter, int>((ref) {
//   return Counter();
// });

// class Counter extends StateNotifier<int> {
//   Counter() : super(0);
//   void increment() => state++;
// }

final homePagingProvider = StateNotifierProvider<Paging, List<Widget>>((ref) {
  return Paging(const FirstPage());
});

class Paging extends StateNotifier<List<Widget>> {
  Paging(Widget starPage) : super([starPage]);

  void goTo(Widget nextPage) => state = List.from(state..add(nextPage));
  void goBack() {
    if (state.length <= 1) {
      return;
    }
    state = List.from(state..removeLast());
  }
}
