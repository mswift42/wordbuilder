// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The wordbuilder library.
library wordbuilder;

int calculate() {
  return 6 * 7;
}
// Checks whether a String contains only a list of 
// given characters.
bool containsOnly(List<String> characters, String word) {
  Set<String>wordset = new Set.from(word.toLowerCase().split(''));
  for (var i in wordset) {
    if (!characters.contains(i)) {
      return false;
    }
  }
  return true;
}

String removePunctuationAndNums(String s) {
  return s.replaceAll(new RegExp("[^a-zA-Z ]"), '');
}

String onlyFileName(List<String> characters) {
  return 'only' + characters.join('') + '.txt';
}
String filteredText(String contents, List chars) {
  String replaced = removePunctuationAndNums(contents);
  List<String>split = replaced.split(' ');
  return split.where((i) => containsOnly(chars,i)).join(' ');
}