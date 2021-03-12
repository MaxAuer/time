export './time.dart';

extension Time on DateTime {
  static DateTime? _now;

  /// A simple wrapper for [DateTime.now()].
  ///
  /// You can override the behaviour of [DateTime.now()]
  /// by setting a custom [DateTime] via [Time.setNow(DateTime)].
  static DateTime now() {
    return _now ?? DateTime.now();
  }

  /// Override [DateTime.now()] with a specific Date.
  ///
  /// This is useful for testing when classes depend on
  /// [DateTime.now()].
  ///
  /// Set to [null] when you want your code to use [DateTime.now()].
  /// This is the default behaviour.
  ///
  /// ... or when you want to time travel.
  static void setNow(DateTime? now) {
    _now = now;
  }
}
