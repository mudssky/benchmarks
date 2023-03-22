import 'dart:ffi';
import 'dart:math';

bool isPrime(int n) {
  if (n < 2) {
    return false;
  }
  final max = sqrt(n) + 1;
  for (var i = 2; i < max; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

List<int> testPrime(int n) {
  final res = <int>[];
  for (var i = 0; i < n; i++) {
    if (isPrime(i)) {
      res.add(i);
    }
  }
  return res;
}

void main() {
  const label = 'dart prime11**7';
  final sw = Stopwatch()..start();
  testPrime(pow(10, 7).toInt());
  sw.stop();
  print('$label ${sw.elapsed}');
}
