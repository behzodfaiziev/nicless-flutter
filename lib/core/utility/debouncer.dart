import 'dart:async';

import 'package:flutter/foundation.dart';

/// Example usage:
/// Initialize class:
/// final Debouncer debouncer = Debouncer(milliseconds: 800);
/// Use it:
/// void onTextChanged(String value) {
///     debouncer.run(() async {
///       if (value.isEmpty) {
///         /// ...
///         return;
///       }
///       /// execute logic
///     });
///   }
final class Debouncer {
  Debouncer({required this.milliseconds});

  final int milliseconds;
  Timer? _timer;

  void run(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
