// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The wordbuilder library.
library wordbuilder;

int calculate() {
  return 6 * 7;
}

bool containsOnly(List<String> characters, String word) {
  Set<String>wordset = new Set.from(word.toLowerCase().split(''));
  for (var i in wordset) {
    if (!characters.contains(i)) {
      return false;
    }
  }
  return true;
}