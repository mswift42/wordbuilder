// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:wordbuilder/wordbuilder.dart' as wordbuilder;
import 'dart:io';
import 'dart:convert';

main() {
  
  
}

String openFile(String name) {
  var file = new File(name);
  return file.readAsStringSync(encoding: LATIN1);
}




