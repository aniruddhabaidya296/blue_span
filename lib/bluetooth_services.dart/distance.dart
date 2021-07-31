// import 'dart:developer';

import 'dart:math';

double getDistance(int rssi, int txPower) {
  int n = 2;
  // double RSSI = txPower - 10 * n * log(d);

  var d = pow(10, ((txPower - rssi) / (10 * n)));

  return d;

  // return pow(10*d, (txPower - rssi) / (10 * 2));
}
