# Time

A simple `DateTime` Extension to manipulate `DateTime.now()`.

## Example

``` dart
import 'package:time/time.dart';

void main() {
  final now = DateTime.now();

  if (now == DateTime.now()) {
    // This will never be hit
  } else {
    print('We are not the same by just a tiny fraction');
  }

  // A better solution!
  // Use Time.now() everytime you want to use DateTime.now()
  //
  // This allows us to do mock DateTime.now()
  final mockNow = DateTime.now();

  Time.setNow(mockNow);

  // Time.now() can now be compared.
  if (Time.now() == mockNow) {
    print('et voilà we are the same!');
  }
}

```