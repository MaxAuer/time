import 'package:test/test.dart';
import 'package:time/time.dart';

void main() {
  group('Time', () {
    final customNow = DateTime(2021, 3, 12, 20, 30);

    test('returns DateTime.now() when no custom DateTime is set', () {
      final now = Time.now();

      final difference = DateTime.now().difference(now);

      // There will be a small difference between Time.now()
      // and DateTime.now() so we will compare milliseconds.
      // This code should be fast enough that it will not take
      // a millisecond to complete this test.
      expect(difference.inMilliseconds == 0, isTrue);
    });

    test('returns custom `now` when set', () {
      Time.setNow(customNow);

      expect(Time.now(), customNow);
    });

    test('returns DateTime.now() when `now` is set to null', () {
      // Set custom time
      Time.setNow(customNow);

      // Verify Time.now() returning customNow
      expect(Time.now(), customNow);

      // Reset Time.now() to use DateTime.now()
      Time.setNow(null);

      expect(Time.now(), isNot(customNow));

      // The difference to DateTime.now() should be minimal.
      expect(
        DateTime.now().difference(Time.now()).inMilliseconds == 0,
        isTrue,
      );
    });
  });
}
