// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library wordbuilder_test;

import 'package:wordbuilder/wordbuilder.dart';
import 'package:unittest/unittest.dart';

var strmap = {
  "I said: I'm sick of this shit!" : "I said Im sick of this shit",
  "sorry, something is not right?" : "sorry something is not right",
  "This. Is. Stupid!!!!?????" : "This Is Stupid",
  "I said: \"I am throwing, .!?\"" : "I said I am throwing "
  
};


void main() => defineTests();

void defineTests() {
  group('main tests', () {
    test('contains only', () {
      expect(containsOnly(['h','e'], "he"), true);
    });
    test('contains only', () {
      expect(containsOnly(['h','e'], "her"), false);
      expect(containsOnly(['h'], "her"),false);
      expect(containsOnly(['a', 'o', 'l', 'h'],'HAllo'),true);
      expect(containsOnly(['s', 'u', 'p', 'e', 'r'], 'supper'),true);
      expect(containsOnly(['s','u','p','e','r'], 'super'), true);
    });
    test('removePunctuation', () {
      strmap.forEach((k,v) => expect(removePunctuationAndNums(k), v));
    });
  });
}
