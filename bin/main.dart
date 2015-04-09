// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:wordbuilder/wordbuilder.dart' as wordbuilder;

main() {
  print('Hello world: ${wordbuilder.calculate()}!');
  print('hallo'.toLowerCase().split(''));
  var an = new Set.from('HallO'.toLowerCase().split(''));
  print(an.join(''));
}
