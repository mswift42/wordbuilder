// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library wordbuilder_test;

import 'package:wordbuilder/wordbuilder.dart';
import 'package:unittest/unittest.dart';

void main() => defineTests();

void defineTests() {
  group('main tests', () {
    test('calculate', () {
      expect(calculate(), 42);
    });
    test('contains only', () {
      expect(containsOnly(['h','e'], "he"), true);
    });
  });
}
